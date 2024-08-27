# Fine tune text2image models

## Preparation

```shell
$ rye sync
```

## Stable Diffusion

### Inference

#### V1.5

```shell
$ rye run python src/ft_sd/sd1_5.py
```

#### V2.1

```shell
$ rye run python src/ft_sd/sd2_1.py
```

#### XL V1.0

```shell
$ rye run python src/ft_sd/sdxl1_0.py
```

### Fine tuning

#### Download of images for fine-tuning

```shell
$ rye run python src/ft_sd/download_dog.py
```

You obtain images of a dog in directory `dog/`.
If there is `.cache/` directory in `dog/`, delete `.cache/`.

#### Fine tuning of `SD V1.5`

```shell
$ src/ft_sd/ft_sd1_5.sh
```

#### Inference with the fine-tuned model

```shell
$ rye run python src/ft_sd/test_sd1_5.py
```

## Reference

- [runwayml/stable-diffusion-v1-5 · Hugging Face](https://huggingface.co/runwayml/stable-diffusion-v1-5)
- [stabilityai/stable-diffusion-2-1 · Hugging Face](https://huggingface.co/stabilityai/stable-diffusion-2-1)
- [stabilityai/stable-diffusion-xl-base-1.0 · Hugging Face](https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0)
- [diffusers/examples/dreambooth/README.md at main · huggingface/diffusers](https://github.com/huggingface/diffusers/blob/main/examples/dreambooth/README.md#training-with-low-rank-adaptation-of-large-language-models-lora)