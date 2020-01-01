#!/usr/bin/env bash

set -eux -o pipefail

function finish {
  kill $DAWN_PID
}
trap finish EXIT

cargo run &
DAWN_PID=$!
curl -v --retry 10 --retry-connrefused http://localhost:8000
curl -v http://localhost:8000/search?query=dsfds