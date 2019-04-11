def handler(event, context):
    response = {
        "statusCode": 200,
        "statusDescription": "200 OK",
        "isBase64Encoded": False,
        "headers": {
            "Content-Type": "text/plain; charset=utf-8"
        }
    }

    response['body'] = "Hello world"
    return response