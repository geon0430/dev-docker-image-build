#!/bin/bash

wget -qO - https://repos.azul.com/azul-repo.key | apt-key add - \
    && echo "deb http://repos.azul.com/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list \
    && apt update \
    && apt install -y zulu11-jdk
