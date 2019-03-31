from troposphere import Ref, Template, Output
from troposphere.iam import Role, Policy
from troposphere.awslambda import Function, Code
from troposphere import GetAtt, Join
import troposphere.elasticloadbalancingv2 as elb
import troposphere.ec2 as ec2

import boto3
import botocore
import json

t = Template()

# Create a Lambda function that will be mapped
code = open("test.py").readlines()

# Create a role for the lambda function
LambdaExecutionRole = t.add_resource(Role(
    "LambdaExecutionRole",
    Path="/",
    Policies=[Policy(
        PolicyName="root",
        PolicyDocument={
            "Version": "2012-10-17",
            "Statement": [{
                "Action": ["logs:*"],
                "Resource": "arn:aws:logs:*:*:*",
                "Effect": "Allow"
            }, {
                "Action": ["lambda:*"],
                "Resource": "*",
                "Effect": "Allow"
            }]
        })],
    AssumeRolePolicyDocument={"Version": "2012-10-17", "Statement": [
        {
            "Action": ["sts:AssumeRole"],
            "Effect": "Allow",
            "Principal": {
                "Service": [
                    "lambda.amazonaws.com",
                    "apigateway.amazonaws.com"
                ]
            }
        }
    ]},
))

# Create the Lambda function
foobar_function = t.add_resource(Function(
    "FoobarFunction",
    Code=Code(
        ZipFile=Join("", code)
    ),
    Handler="index.handler",
    Role=GetAtt(LambdaExecutionRole, "Arn"),
    Runtime="python3.7",
))

ec2_client = boto3.client('ec2')
subnets = ec2_client.describe_subnets()["Subnets"]
vpc = ec2_client.describe_vpcs()["Vpcs"][0]

# Add the application ELB
ApplicationElasticLB = t.add_resource(elb.LoadBalancer(
    "ApplicationElasticLB",
    Name="ApplicationElasticLB",
    Scheme="internet-facing",
    Subnets=[x["SubnetId"] for x in subnets]
))

listener = t.add_resource(elb.Listener(
    "Listener",
    LoadBalancerArn=Ref(ApplicationElasticLB),
    Port=80,
    Protocol="HTTP",
    DefaultActions=[elb.Action(
        Type="fixed-response",
        FixedResponseConfig=elb.FixedResponseConfig(
            ContentType="text/plain",
            StatusCode="404",
            MessageBody="No lambda configured"
        )
    )]
))

t.add_output([
    Output(
        "LoadbalancerARN",
        Value=Ref(ApplicationElasticLB)
    ),
    Output(
        "ListenerARN",
        Value=Ref(listener)
    ),    
    Output(
        "FoobarFunctionName",
        Value=Ref(foobar_function)
    ),
    Output(
        "FoobarFunctionArn",
        Value=GetAtt(foobar_function, "Arn")
    ),
])

open("cloud.json", "w").write(t.to_json())

cf = boto3.client('cloudformation')
print("Validating template")
cf.validate_template(TemplateBody=t.to_json())

stack_name = "dawn-test"

# Using the filter functions on describe_stacks makes it fail when there's zero entries...
print("Checking existing CloudFormation stacks")
stacks = [x for x in cf.describe_stacks()["Stacks"] if x["StackName"] == stack_name]

if len(stacks) == 1:
    print("Updating %s" % stack_name)
    try:
        stack_result = cf.update_stack(StackName=stack_name, TemplateBody=t.to_json(), Capabilities=['CAPABILITY_IAM'])
        waiter = cf.get_waiter('stack_update_complete')
        waiter.wait(StackName=stack_name)
    except botocore.exceptions.ClientError as e:
        if e.response["Error"]["Message"] == "No updates are to be performed.":
            pass
        else:
            raise
else:
    print("Creating %s" % stack_name)
    stack_result = cf.create_stack(StackName=stack_name, TemplateBody=t.to_json(), Capabilities=['CAPABILITY_IAM'])
    waiter = cf.get_waiter('stack_create_complete')
    waiter.wait(StackName=stack_name)

stack = cf.describe_stacks(StackName=stack_name)["Stacks"][0]
outputs = dict([(x["OutputKey"], x["OutputValue"]) for x in stack["Outputs"]])
print(outputs)
lb = outputs["LoadbalancerARN"]

elb_client = boto3.client('elbv2')
existing_target_groups = elb_client.describe_target_groups()["TargetGroups"]
existing_target_groups = dict([(x["TargetGroupName"],x) for x in existing_target_groups])
#print(existing_target_groups)

funcs = [("Foobar", outputs["FoobarFunctionArn"], "/")]

lambda_client = boto3.client('lambda')

for name, funcArn, path in funcs:
    name = "%s-%s" % (stack_name, name)
    if name in existing_target_groups:
        old_target = existing_target_groups[name]["TargetGroupArn"]
        rules = elb_client.describe_rules(ListenerArn=outputs["ListenerARN"])["Rules"]
        for r in rules:
            for a in r["Actions"]:
                if a["Type"] == "forward" and a["TargetGroupArn"] == old_target:
                    elb_client.delete_rule(RuleArn=r["RuleArn"])
                    break
        elb_client.delete_target_group(
            TargetGroupArn=old_target
        )
    group = elb_client.create_target_group(
        Name=name,
        TargetType="lambda",
    )
    print(group)
    targetGroupArn = group["TargetGroups"][0]["TargetGroupArn"]
    policy = lambda_client.get_policy(
        FunctionName=funcArn
    )
    statements = json.loads(policy["Policy"])["Statement"]
    statement_id = "%s-permissions" % name
    if statement_id in [x["Sid"] for x in statements]:
        lambda_client.remove_permission(
            FunctionName=funcArn,
            StatementId=statement_id
        )
    lambda_client.add_permission(
        Action="lambda:InvokeFunction",
        FunctionName=funcArn,
        Principal="elasticloadbalancing.amazonaws.com",
        SourceArn=targetGroupArn,
        StatementId=statement_id
    )
    targets = elb_client.register_targets(
        TargetGroupArn=targetGroupArn,
        Targets=[{
            'Id': funcArn
        }]
    )
    rule = elb_client.create_rule(
        ListenerArn=outputs["ListenerARN"],
        Priority=100,
        Conditions=[{
            'Field': "path-pattern",
            'Values': [path]
        }],
        Actions=[{
            'Type': "forward",
            'TargetGroupArn': targetGroupArn
        }]
    )
    print(rule)