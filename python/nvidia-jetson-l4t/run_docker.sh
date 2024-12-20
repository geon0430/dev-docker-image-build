#!/bin/bash

port_num="1"
CONTAINER_NAME="jetson-image-test"
IMAGE_NAME="nvidia-jeston/amd64/jetpack6.1/python3.10/tensorrt10.3.0/image"
TAG="1"

docker run \
    --runtime nvidia \
    --gpus all \
    -it \
    -p ${port_num}3080:8080 \
    -p ${port_num}3000:8000 \
    -p ${port_num}3888:8888 \
    --name ${CONTAINER_NAME} \
    --privileged \
    --shm-size 5g \
    --restart=always \
    ${IMAGE_NAME}:${TAG}