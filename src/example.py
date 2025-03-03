import torch
from datetime import datetime
from diffusers import StableDiffusion3Pipeline
from pathlib import Path

pipe = StableDiffusion3Pipeline.from_pretrained('stabilityai/stable-diffusion-3-medium-diffusers', torch_dtype=torch.float16)
pipe = pipe.to('cuda')

image = pipe(
    'A cat holding a sign that says hello world',
    negative_prompt="",
    num_inference_steps=28,
    guidance_scale=7.0,
).images[0] # type: ignore

now = datetime.now().strftime('%Y%m%d%H%M%S')
dirpath = Path('./images/')
dirpath.mkdir(parents=True, exist_ok=True)

filename = f'{now}.png'
image.save(dirpath / filename)
