# Define the PyTorch version to use.
# Update this if you need a newer version with bug fixes, performance improvements, or new features.
ARG PYTORCH_VERSION=2.6.0

# Define the CUDA version.
# Make sure this matches your GPU's supported CUDA version and the PyTorch build you’re using.
# Check compatibility with `nvidia-smi` or the official PyTorch website.
ARG CUDA_VERSION=12.6

# Define the cuDNN version (NVIDIA’s Deep Neural Network library).
# Keep this compatible with the selected CUDA and PyTorch version.
# Higher versions might offer performance improvements, but check framework support first.
ARG CUDNN_VERSION=9

# Specify the type of PyTorch container.
# Options: "runtime" (lightweight, for inference) or "devel" (includes compilers, for development).
# Choose "devel" if you need to compile custom CUDA extensions.
ARG CONTAINER_TYPE=runtime

FROM pytorch/pytorch:${PYTORCH_VERSION}-cuda${CUDA_VERSION}-cudnn${CUDNN_VERSION}-${CONTAINER_TYPE}

ARG DEBIAN_FRONTEND=noninteractive

RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash

RUN apt-get update && apt-get install -y git git-lfs
RUN git lfs install

WORKDIR /app

COPY . .

RUN pip install diffusers["torch"] transformers compel --upgrade

RUN apt-get clean && rm -rf /var/lib/apt/lists/*
