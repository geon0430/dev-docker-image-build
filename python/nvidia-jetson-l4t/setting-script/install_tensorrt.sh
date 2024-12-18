#!/bin/bash

set -ex

apt-get update && apt-get upgrade -y 
dpkg -i /vison-ai-server/setting-script/nv-tensorrt-local-tegra-repo-ubuntu2204-10.3.0-cuda-12.6_1.0-1_arm64.deb
cp /var/nv-tensorrt-local-tegra-repo-ubuntu2204-10.3.0-cuda-12.5/nv-tensorrt-local-tegra-E39D0E0C-keyring.gpg /usr/share/keyrings/

apt-get update
apt-get install -y tensorrt
apt-get install -y python3-libnvinfer-dev
apt-get install -y libnvinfer-bin 

export PATH=/usr/src/tensorrt/bin:$PATH
echo "export PATH=/usr/src/tensorrt/bin:\$PATH" >> ~/.bashrc
source ~/.bashrc