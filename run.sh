#!/bin/sh
#$ -cwd
#$ -l node_q=1
#$ -l h_rt=0:20:00
#$ -N test
# CUDA環境の読込
# module load cuda/12.3.2  cudnn/9.0.0 
# module load ffmpeg/6.1.1

source /gs/bs/tga-RLA/atamayama/ex/Marigold/venv/marigold/bin/activate
export HF_HOME=$(pwd)/cache
python run.py \
    --checkpoint prs-eth/marigold-v1-0 \
    --denoise_steps 50 \
    --ensemble_size 10 \
    --input_rgb_dir input/in-the-wild_example \
    --output_dir output/in-the-wild_example
