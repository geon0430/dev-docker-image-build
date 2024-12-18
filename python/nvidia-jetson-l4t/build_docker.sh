#!/bin/bash

IMAGE_NAME="nvidia-jeston/amd64/jetpack6.1/python3.10/tensorrt10.3.0/image"
TAG="1"

docker build --no-cache -t ${IMAGE_NAME}:${TAG} .
