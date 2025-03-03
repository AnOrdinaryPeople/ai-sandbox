# AI Sandbox

A simple sandbox environment using Dev Containers for experimenting with pretrained models. It is based on the `pytorch` image and allows version customization for PyTorch, CUDA, cuDNN, and container type (runtime or development). The image size is large, around 21.2GB for the development container, but this is justified by the inclusion of GPU support, development tools, and various AI libraries.

## Setup

1. **Install Dev Containers extension:**

   Install [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension from VSCode marketplace.

1. **Open the development container:**

   Open the command palette and select the option `Dev Containers: Rebuild and Reopen in Container`.

1. **Adjust shared memory for large models (if needed):**

   When working with very large pretrained AI models, increasing the shared memory allocation may be necessary to prevent crashes. This can be done by modifying `--shm-size` argument at `devcontainer.json`, for example:

   ```json
   "runArgs": ["--gpus=all", "--ipc=host", "--shm-size=16gb"]
   ```

   The `16gb` value can be adjusted based on the model's memory requirements.

## Usage Examples

Explore various use cases within the AI Sandbox devcontainer using these examples. All scripts and projects should be placed inside the `src` directory, which is mounted in the devcontainer for seamless access.

- **Run a simple demo**

  ```bash
  python /src/example.py
  ```

  This command executes the `example.py` script located in the `/src` directory for a basic demonstration.

- **Clone pretrained model repositories**

  ```bash
  cd src
  git clone https://github.com/example/pretrained-model-repo.git
  ```

  Store repositories inside `src` to keep the projects organized. Git LFS is pre-installed in the Dockerfile for managing large model files effectively.

- **Download pretrained models**

  Models can be downloaded and utilized directly in the AI Sandbox. For example, the [DeepSeek-R1](https://huggingface.co/deepseek-ai/DeepSeek-R1-Distill-Qwen-1.5B) safetensors file can be manually downloaded and placed in the `models` directory, which is mounted via `devcontainer.json`.

- **Create a Python file with Diffusers**

  Develop Python scripts inside `src` directory, see [Diffusers](https://huggingface.co/docs/diffusers/index) for references.
