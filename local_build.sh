#!/bin/bash
set -ev

echo "Running local build test."

# build zigbee2mqtt
docker run -it --rm --privileged --name "zigbee2mqtt" \
    -v ~/.docker:/root/.docker \
    -v "$(pwd)":/docker \
    hassioaddons/build-env:latest \
    --target "zigbee2mqtt" \
    --tag-test \
    --armhf \
    --from "homeassistant/{arch}-base" \
    --author "Thomas Wiebe <code@heimblick.net>" \
    --doc-url "https://github.com/twiebe/hassio-zigbee2mqtt" \
    --parallel
