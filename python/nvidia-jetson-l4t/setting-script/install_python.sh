#!/bin/bash

set -e  
export DEBIAN_FRONTEND=noninteractive

apt-get update && apt-get upgrade -y

apt-get install -y \
    software-properties-common \
    tzdata

ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime
dpkg-reconfigure -f noninteractive tzdata

add-apt-repository -y ppa:deadsnakes/ppa
apt-get update

apt-get install -y \
    python3.10 \
    python3.10-dev \
    python3.10-distutils \
    python3-pip

ln -sf /usr/bin/python3.10 /usr/bin/python
ln -sf /usr/bin/python3.10 /usr/bin/python3

python -m pip install --upgrade pip

pip install nvidia-pyindex
#pip install nvidia-tensorrt-cu12==10.3.0
