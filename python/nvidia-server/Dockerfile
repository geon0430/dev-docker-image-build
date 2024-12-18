FROM nvcr.io/nvidia/pytorch:23.01-py3

ENV TZ Asia/Seoul
ENV DEBIAN_FRONTEND=noninteractive

ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility

COPY . /nvidia-server/

RUN bash /nvidia-server/setting-script/install_dependencies.sh
RUN bash /nvidia-server/setting-script/install_pip.sh
RUN bash /nvidia-server/setting-script/install_OpenCV.sh
RUN bash /nvidia-server/setting-script/install_ffmpeg.sh
