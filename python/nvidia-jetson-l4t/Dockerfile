FROM nvcr.io/nvidia/l4t-cuda:12.2.12-devel

ENV TZ=Asia/Seoul
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=compute,utility

COPY . /dev-docker-image-build/

RUN bash /dev-docker-image-build/setting-script/install_dependencies.sh
RUN bash /dev-docker-image-build/setting-script/install_python.sh
RUN bash /dev-docker-image-build/setting-script/install_tensorrt.sh
RUN bash /dev-docker-image-build/setting-script/install_ffmpeg.sh
RUN bash /dev-docker-image-build/setting-script/install_pip.sh
