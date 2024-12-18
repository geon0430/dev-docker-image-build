#!/bin/bash

add-apt-repository multiverse
apt-get update

cd / && mkdir -p /ffmpeg && cd /ffmpeg
git clone https://git.ffmpeg.org/ffmpeg.git ffmpeg/
cd ffmpeg/

./configure \
    --disable-static \
    --enable-shared \
    --enable-gpl \
    --enable-nonfree \
    --enable-libx264 \
    --enable-libx265 \
    --enable-libv4l2

make -j$(nproc) && make install
ldconfig

cd / && rm -rf /ffmpeg