FROM nvcr.io/nvidia/l4t-jetpack:r36.4.0

ENV TZ=Asia/Seoul
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=compute,video,utility
RUN echo 'export PATH=$PATH:/usr/src/tensorrt/bin/' >> ~/.bashrc && \
    echo 'export PATH=$PATH:/usr/src/tensorrt/bin/' >> /etc/bash.bashrc

    COPY . /nvidia-jetson-l4t/

RUN bash /nvidia-jetson-l4t/setting-script/install_dependencies.sh
RUN bash /nvidia-jetson-l4t/setting-script/install_pip.sh
RUN bash /nvidia-jetson-l4t/setting-script/install_ffmpeg.sh