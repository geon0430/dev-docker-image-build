FROM nvcr.io/nvidia/l4t-cuda:12.2.12-devel

ENV TZ=Asia/Seoul
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=compute,utility

COPY . /nvidia-jetson-l4t/

RUN bash /nvidia-jetson-l4t/setting-script/install_dependencies.sh
RUN bash /nvidia-jetson-l4t/setting-script/install_python.sh
RUN bash /nvidia-jetson-l4t/setting-script/install_tensorrt.sh
RUN bash /nvidia-jetson-l4t/setting-script/install_ffmpeg.sh
RUN bash /nvidia-jetson-l4t/setting-script/install_pip.sh
