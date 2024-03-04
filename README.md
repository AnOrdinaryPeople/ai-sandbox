# AI Sandbox

A straightforward sandbox setup is created using a devcontainer to experiment with various open-source pretrained models. The Docker image utilizes `nvidia/cuda:11.8.0-cudnn8-devel-ubuntu20.04`, incorporating Python 3.10, additional development packages, and several machine learning modules. While the image is quite large, at around 19.5GB, the inclusion of GPU support and variety of machine learning modules justifies the size.

## Setup

1. **Clone generative models for base sandbox:**

   ```bash
   $ git clone https://github.com/Stability-AI/generative-models.git
   ```

1. **(Optional) Download a pretrained model:**

   If needed, download a pretrained model and place it in the `/generative-models/checkpoints` directory. For example, [SDXL-base-1.0](https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0) model.

1. **Install Dev Containers extension:**

   Install [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension from VSCode marketplace.

1. **Open the development container:**

   Open the command palette and select the option `Dev Containers: Rebuild and Reopen in Container`.

## Usage Examples

Explore various use cases within the AI Sandbox devcontainer by following these examples:

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

- **Directly create a Python file with [Diffusers](https://huggingface.co/docs/diffusers/index)**

  Create a Python file in the AI Sandbox, incorporating the power of [Diffusers](https://huggingface.co/docs/diffusers/index) for advanced machine learning tasks.
