#!/bin/bash

port_num="1"
CONTAINER_NAME="jetson-image-test"
IMAGE_NAME="nvidia-jeston/amd64/jetpack6.1/python3.10/tensorrt10.3.0/image"
TAG="1"

code_path=$(pwd)

docker run \
    --platform linux/arm64 \
    --runtime nvidia \
    --gpus all \
    -it \
    -p ${port_num}3888:8888 \
    --name ${CONTAINER_NAME} \
    --privileged \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --shm-size 5g \
    --restart=always \
    -v ${code_path}:/dev-docker-image-build \
    -w /dev-docker-image-build \
    -e DISPLAY=$DISPLAY \
    ${IMAGE_NAME}:${TAG}
