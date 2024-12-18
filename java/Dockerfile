FROM ubuntu:22.04

ENV TZ Asia/Seoul
ENV DEBIAN_FRONTEND=noninteractive

COPY . /java-setting/

RUN bash /java-setting/setting-script/install_dependencies.sh
RUN bash /java-setting/setting-script/install_java11.sh
RUN bash /java-setting/setting-script/install_STS.sh

ENV JAVA_HOME=/usr/lib/jvm/zulu11
ENV PATH=$PATH:/usr/lib/jvm/zulu11/bin:/opt/sts-4.13.1.RELEASE

CMD ["/bin/bash"]
