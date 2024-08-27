export MODEL_NAME="runwayml/stable-diffusion-v1-5"
export INSTANCE_DIR="dog"
export OUTPUT_DIR="outputs_sd1_5_dog"

rye run accelerate launch src/ft_sd/train_dreambooth_lora.py \
  --pretrained_model_name_or_path=$MODEL_NAME  \
  --instance_data_dir=$INSTANCE_DIR \
  --output_dir=$OUTPUT_DIR \
  --instance_prompt="a photo of sks dog" \
  --resolution=512 \
  --train_batch_size=1 \
  --gradient_accumulation_steps=1 \
  --checkpointing_steps=10000 \
  --learning_rate=1e-4 \
  --use_8bit_adam \
  --lr_scheduler="constant" \
  --lr_warmup_steps=0 \
  --seed="0" \
  --max_train_steps=500 \
  --validation_epoch=10 \
  --sample_batch_size=1 \
  --gradient_checkpointing \
  --report_to="wandb" \
  --enable_xformers_memory_efficient_attention \
  --prior_generation_precision=fp16 \


  # --validation_prompt="A photo of sks dog in a bucket" \
  # --num_validation_images=4 \