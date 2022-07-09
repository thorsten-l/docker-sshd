#!/bin/bash

BUILD_VERSION=$1
echo "BUILD_VERSION=$BUILD_VERSION"
docker build --build-arg BUILD_VERSION="$BUILD_VERSION" -t "sshd:$BUILD_VERSION-alpine" .
