#!/bin/sh
#$ -cwd
#$ -l node_q=1
#$ -l h_rt=24:00:00
#$ -N test
# CUDA環境の読込
# module load cuda/12.3.2  cudnn/9.0.0 
# module load ffmpeg/6.1.1

source ~/venv/marigold/bin/activate

pip list

python run.py \
    --checkpoint prs-eth/marigold-v1-0 \
    --denoise_steps 50 \
    --ensemble_size 10 \
    --input_rgb_dir input/in-the-wild_example \
    --output_dir output/in-the-wild_example
