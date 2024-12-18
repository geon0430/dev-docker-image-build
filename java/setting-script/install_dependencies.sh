#!/bin/bash

apt update && apt install -y \
    wget \
    gnupg2 \
    unzip \
    subversion \
    curl \
    git \
    vim \
    maven \
    gradle \
    && apt clean
