#!/bin/bash

IMAGE_NAME="nvidia/x86_64/ubuntu22.04/java11/sts4.13/image"
TAG="1"

docker build --no-cache -t ${IMAGE_NAME}:${TAG} .

