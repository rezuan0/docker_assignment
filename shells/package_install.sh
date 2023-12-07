#!/bin/bash

echo "Enter your container name: "
# shellcheck disable=SC2162
read name
echo "Enter your package name with version <demo==1.1.2>: "
# shellcheck disable=SC2162
read pack

docker exec $name pip install $pack


