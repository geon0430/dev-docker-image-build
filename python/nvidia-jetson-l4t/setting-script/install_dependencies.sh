#!/bin/bash

set -ex

apt-get update && apt-get upgrade -y

apt-get install -y \
    software-properties-common \
    apt-utils \
    git \
    curl \
    unzip \
    wget \
    tmux \
    vim || { echo "Error: Failed to install dev-tool dependencies"; exit 1; }

apt-get install -y \
    pkg-config \
    autoconf \
    v4l-utils \
    zlib1g-dev \
    build-essential \
    libjpeg-dev \
    libpng-dev \
    libtiff-dev \
    gawk \
    bison \
    manpages-dev \
    texinfo \
    gcc \
    g++ \
    tar \
    sed \
    flex \
    libgl1-mesa-glx \
    libstdc++6 || { echo "Error: Failed to install dependencies"; exit 1; }

apt-get install -y \
    cmake \
    automake \
    libx264-dev \
    libx265-dev \
    libv4l-dev \
    libavcodec-dev \
    libavformat-dev \
    libswscale-dev || { echo "Error: Failed to install FFmpeg dependencies"; exit 1; }