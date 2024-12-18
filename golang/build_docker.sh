#!/bin/bash/

IMAGE_NAME="nvidia/x86_64/ubuntu22.04/go1.21.3/python3.8.10/tensorrt8.5.2/image"

TAG="1"

docker build --no-cache -t ${IMAGE_NAME}:${TAG} .
