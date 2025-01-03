#!/bin/bash

set -e  
set -x  

apt-get install -y \
    python3-pip


pip install --upgrade pip setuptools wheel

pip install jupyter
pip install pandas
pip install fastapi[all]
pip install python-multipart
pip install loguru
pip install onvif2-zeep
pip install icecream
pip install sqlmodel
pip install pycryptodome
pip install "SQLAlchemy>=2.0.0,<2.1.0"
pip install "pydantic<2.0.0,>=1.7.4"
pip install shortuuid
pip install lap
pip install aiosqlite
pip install httpx
pip install ffmpeg-python
pip install pillow-heif
pip install opencv-python
pip install numpy  
pip install torch
pip install cupy-cuda12x
pip install cucim-cu12