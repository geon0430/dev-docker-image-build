#!/bin/bash

port_num="1"
CONTAINER_NAME="image-test"
IMAGE_NAME="nvidia/x86_64/ubuntu22.04/go1.21.3/python3.8.10/tensorrt8.5.2/image"
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