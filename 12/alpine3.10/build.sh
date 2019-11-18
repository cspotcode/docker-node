#!/usr/bin/env bash
set -euo pipefail

docker build --tag node-fully-static .
# To save backup of the image to a tarball
#docker save -o node-fully-static.tar node-fully-static
docker run --entrypoint /bin/sh -v "$PWD:/mounted" node-fully-static -c 'cp `which node` /mounted/node'

