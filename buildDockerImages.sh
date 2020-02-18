#!/usr/bin/env bash

set -eo pipefail

modules=( config eureka zuul po pc )

for module in "${modules[@]}"; do
    docker build --no-cache=true -t "goopnigoop/${module}:latest" ${module}
done