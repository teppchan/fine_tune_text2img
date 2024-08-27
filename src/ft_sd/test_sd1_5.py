from diffusers import DiffusionPipeline

model_id = "runwayml/stable-diffusion-v1-5"
lora_id = "outputs_sd1_5_dog/pytorch_lora_weights.safetensors"

pipe = DiffusionPipeline.from_pretrained(model_id)
pipe.load_lora_weights(lora_id)
pipe.to("cuda")

prompt = "A photo of sks dog in a bucket"
image = pipe(prompt, num_inference_steps=50, guidance_scale=7.5).images[0]

image.save("dog-bucket.png")
