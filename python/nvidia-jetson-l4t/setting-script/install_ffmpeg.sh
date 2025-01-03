#!/bin/bash

set -ex 

## nvidia_multi_media_api_install
apt-get update
curl -fsSL https://repo.download.nvidia.com/jetson/jetson-ota-public.asc | gpg --dearmor -o /usr/share/keyrings/nvidia-jetson-ota-public.gpg
echo "deb [signed-by=/usr/share/keyrings/nvidia-jetson-ota-public.gpg] https://repo.download.nvidia.com/jetson/common r36.4 main" > /etc/apt/sources.list.d/nvidia-l4t-apt-source.list
echo "deb [signed-by=/usr/share/keyrings/nvidia-jetson-ota-public.gpg] https://repo.download.nvidia.com/jetson/t234 r36.4 main" >> /etc/apt/sources.list.d/nvidia-l4t-apt-source.list
apt-get clean
rm -rf /var/lib/apt/lists/*
apt-get update

apt-get download nvidia-l4t-jetson-multimedia-api
dpkg --force-depends --install nvidia-l4t-jetson-multimedia-api_36.4.0-20240912212859_arm64.deb

apt-get download nvidia-l4t-camera nvidia-l4t-multimedia nvidia-l4t-multimedia-utils
dpkg --force-depends --install nvidia-l4t-camera_36.4.0-*.deb
dpkg --force-depends --install nvidia-l4t-multimedia_36.4.0-*.deb
dpkg --force-depends --install nvidia-l4t-multimedia-utils_36.4.0-*.deb

ldconfig

export LIB_NVBUFSURFACE=/usr/lib/aarch64-linux-gnu/nvidia/libnvbufsurface.so
export LIB_NVBUFSURFTRANSFORM=/usr/lib/aarch64-linux-gnu/nvidia/libnvbufsurftransform.so
export LIB_NVJPEG=/usr/lib/aarch64-linux-gnu/nvidia/libnvjpeg.so
export LIB_V4L2=/usr/lib/aarch64-linux-gnu/libv4l2.so
export LD_LIBRARY_PATH=/usr/lib/aarch64-linux-gnu/nvidia:$LD_LIBRARY_PATH

## Clone and prepare jetson-ffmpeg ##
git clone https://github.com/Keylost/jetson-ffmpeg.git
cd jetson-ffmpeg
mkdir -p build
cd build

cmake -DCMAKE_BUILD_TYPE=Release \
      -DLIB_NVBUFSURFACE=$LIB_NVBUFSURFACE \
      -DLIB_NVBUFSURFTRANSFORM=$LIB_NVBUFSURFTRANSFORM \
      -DLIB_NVJPEG=$LIB_NVJPEG \
      -DLIB_V4L2=$LIB_V4L2 \
      -DCMAKE_C_FLAGS="-I/usr/src/jetson_multimedia_api/include" \
      -DCMAKE_CXX_FLAGS="-I/usr/src/jetson_multimedia_api/include" \
      -DCMAKE_EXE_LINKER_FLAGS="-L/usr/lib/aarch64-linux-gnu/nvidia" \
      ..

make -j$(nproc)
make install
ldconfig

## Patch and build ffmpeg ##
git clone git://source.ffmpeg.org/ffmpeg.git -b release/7.1 --depth=1
cd ../
./ffpatch.sh ./build/ffmpeg/
cd build/ffmpeg

ldconfig
## build after install
./configure --enable-nvmpi
make -j$(nproc)
make install
ldconfig