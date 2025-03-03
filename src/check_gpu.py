import torch

if not torch.cuda.is_available():
    raise RuntimeError("CUDA is not available.")

capability = torch.cuda.get_device_capability()
major, minor = capability

print(f"CUDA Version: {torch.version.cuda}")
print(f"CUDA Device: {torch.cuda.get_device_name(torch.cuda.current_device())}")
print(f"Compute Capability: {major}.{minor}")
print(f"float16 (half-precision) is{'' if major >= 5 else ' NOT'} supported")
print(f"bfloat16 (brain floating point) is{'' if torch.cuda.is_bf16_supported() else ' NOT'} supported")
