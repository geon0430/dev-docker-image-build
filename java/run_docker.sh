#!/bin/bash

port_num="1"
CONTAINER_NAME="geon_java_test"
IMAGE_NAME="java_test"
TAG="0.1"

docker run \
    --runtime nvidia \
    --gpus all \
    -it \
    -p ${port_num}3080:8080 \
    -p ${port_num}3000:8000 \
    -p ${port_num}3888:8888 \
    --name ${CONTAINER_NAME} \
    --privileged \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --shm-size 5g \
    --restart=always \
    -e DISPLAY=$DISPLAY \
    ${IMAGE_NAME}:${TAG}