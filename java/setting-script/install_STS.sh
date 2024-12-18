#!/bin/bash

wget https://projectlombok.org/downloads/lombok.jar -O /usr/local/lib/lombok.jar

wget https://download.springsource.com/release/STS4/4.13.1.RELEASE/dist/e4.22/spring-tool-suite-4-4.13.1.RELEASE-e4.22.0-linux.gtk.x86_64.tar.gz \
    && tar -xvzf spring-tool-suite-4-4.13.1.RELEASE-e4.22.0-linux.gtk.x86_64.tar.gz -C /opt \
    && rm spring-tool-suite-4-4.13.1.RELEASE-e4.22.0-linux.gtk.x86_64.tar.gz
