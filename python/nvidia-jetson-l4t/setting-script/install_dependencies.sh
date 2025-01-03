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
    sudo \
    vim || { echo "Error: Failed to install dev-tool dependencies"; exit 1; }

apt-get install -y \
    cmake \
    make \
    automake \
    pkg-config \
    autoconf \
    v4l-utils \
    zlib1g-dev \
    libxnvctrl-dev \
    build-essential \
    libjpeg-dev \
    libpng-dev \
    libtiff-dev \
    gcc \
    g++ \
    tar \
    sed \
    flex \
    libgl1-mesa-glx \
    yasm \
    libtool \
    nasm \
    manpages-dev \
    libdrm-dev \
    libstdc++6 \
    libass-dev \
    libfreetype6-dev \
    libgnutls28-dev \
    libmp3lame-dev \
    libopus-dev \
    libvpx-dev \
    libx264-dev \
    libx265-dev \
    libvorbis-dev \
    libwebp-dev \
    libnuma-dev  || { echo "Error: Failed to install dependencies"; exit 1; }