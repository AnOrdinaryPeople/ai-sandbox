# AI Sandbox

Simple sandbox setup with dev container for experimenting with various open source pre-trained models. The Docker image itself using `nvidia/cuda:11.8.0-cudnn8-devel-ubuntu20.04` including python 3.10 and some machine learning modules. The image is quite large, around 19GB. However, it should be reasonable considering the inclusion of GPU support and some machine learning modules.

## Setup

1. Clone generative models for base sandbox

   ```bash
   $ git clone https://github.com/Stability-AI/generative-models.git
   ```

1. Download a pretrained model if necessary and place it in `/generative-models/checkpoints`. For example, [SDXL-base-1.0](https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0)

1. Install [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension in VSCode

1. Open command palette and select `Dev Containers: Rebuild and Reopen in Container`

## Usage Examples

Explore various use cases within the AI Sandbox dev container by following these examples:

- **Run a simple demo**

  ```bash
  $ ./sampling.sh
  ```

  Execute the `sampling.sh` script to launch Streamlit inside the `generative-models` repository for a quick and simple demonstration.

- **Clone pretrained model repositories**

  ```bash
  $ git clone https://github.com/your-username/pretrained-model-repo.git
  ```

  Explore and clone additional pretrained model repositories into the AI Sandbox for a broader range of experiments.

- **Directly create a Python file with [diffusers](https://huggingface.co/docs/diffusers/index)**

  Create a Python file in the AI Sandbox, incorporating the power of [diffusers](https://huggingface.co/docs/diffusers/index) for advanced machine learning tasks.
