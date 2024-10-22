FROM pytorch/pytorch:2.3.1-cuda11.8-cudnn8-devel

ARG DEBIAN_FRONTEND=noninteractive

RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash

RUN apt-get update && apt-get install -y git git-lfs
RUN git lfs install

WORKDIR /app

COPY . .

RUN pip install diffusers["torch"] transformers compel --upgrade

RUN apt-get clean && rm -rf /var/lib/apt/lists/*
