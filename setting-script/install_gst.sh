#!/bin/bash/

DS_VERSION=6.3
DS_PATH="/opt/nvidia/deepstream/deepstream-${DS_VERSION}"

apt install \
    python3-gi python3-dev python3-gst-1.0 python-gi-dev git \
    python3 python3-pip python3.8-dev cmake g++ build-essential \
    libglib2.0-dev libglib2.0-dev-bin libgstreamer1.0-dev libtool \
    m4 autoconf automake libgirepository1.0-dev libcairo2-dev

# Initialization of submodules
cd ${DS_PATH}/sources && \
    git clone https://github.com/NVIDIA-AI-IOT/deepstream_python_apps.git

cd ${DS_PATH}/sources/deepstream_python_apps && \
    git submodule update --init && \

    # Installing Gst-python
    apt-get install -y apt-transport-https ca-certificates -y && \
    update-ca-certificates && \

    # Build and install Gst-python
    cd 3rdparty/gst-python/ && \
    ./autogen.sh && \
    make && \
    make install

# Compiling th bindings
cd ${DS_PATH}/sources/deepstream_python_apps/bindings && \
    mkdir -p build && \
    cd build && \
    cmake .. && \
    make -j$(nproc) && \
    pip3 install ./pyds-*.whl
