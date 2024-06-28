FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu20.04

ARG DEBIAN_FRONTEND=noninteractive

ENV TZ=Asia/Jakarta

RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash

# build-essential is optional I guess
# zlib1g-dev is required for install the python
# libssl-dev is required for install the pip
# libffi-dev is required for install the generative models
# libbz2-dev and liblzma-dev are required for install torchvision
RUN apt-get update && apt-get install -y curl git git-lfs zlib1g-dev libssl-dev libffi-dev libbz2-dev liblzma-dev
RUN git lfs install

RUN curl -O https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tar.xz \
  && tar -xf Python-3.10.0.tar.xz \
  && cd Python-3.10.0 \
  && ./configure \
  && make -j$(nproc) \
  && make install \
  && cd .. \
  && rm -rf Python-3.10.0* \
  && ln -s /usr/local/bin/python3.10 /usr/local/bin/python
RUN curl -O https://bootstrap.pypa.io/get-pip.py \
  && python get-pip.py \
  && rm -rf get-pip.py

WORKDIR /app

COPY . .

RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118 && \
  pip install diffusers["torch"] transformers --upgrade

RUN apt-get clean && rm -rf /var/lib/apt/lists/*
