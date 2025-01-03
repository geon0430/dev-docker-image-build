#!/bin/bash

IMAGE_NAME="nvidia-jeston/amd64/jetpack5.4/python3.10/tensorrt10.3.0/ffmpeg/image"
TAG="1"

docker build --no-cache -t ${IMAGE_NAME}:${TAG} .
