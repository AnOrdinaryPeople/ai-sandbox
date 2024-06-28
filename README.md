# AI Sandbox

A straightforward sandbox setup using Dev Containers for experimenting with various pretrained models. Built on `nvidia/cuda:11.8.0-cudnn8-devel-ubuntu20.04`, including Python 3.10 and some AI libraries. While the image size is quite large, approximately 18.89GB, the inclusion of GPU support and a variety of AI libraries justifies the size.

## Setup

1. **Install Dev Containers extension:**

   Install [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension from VSCode marketplace.

1. **Open the development container:**

   Open the command palette and select the option `Dev Containers: Rebuild and Reopen in Container`.

## Usage Examples

Explore various use cases within the AI Sandbox devcontainer using these examples:

- **Run a simple demo**

  ```bash
  # Assuming inside the "app" directory
  $ python /example/main.py
  ```

  This command executes the `main.py` script located in the `/example` directory for a basic demonstration.

- **Clone pretrained model repositories**

  ```bash
  $ git clone https://github.com/example/pretrained-model-repo.git
  ```

  Clone additional pretrained model repositories into the AI Sandbox to expand experimental scope. Git LFS is pre-installed in the Dockerfile for managing large model files effectively.

- **Download pretrained models**

  Models can be downloaded and utilized directly in the AI Sandbox. For example, the [Animagine XL 3.1](https://huggingface.co/cagliostrolab/animagine-xl-3.1) safetensors file can be manually downloaded and placed in the `models` directory, which is mounted via `devcontainer.json`.

- **Create a Python file with Diffusers**

  Develop Python scripts within the AI Sandbox to leverage the advanced capabilities of [Diffusers](https://huggingface.co/docs/diffusers/index) for complex AI tasks.
