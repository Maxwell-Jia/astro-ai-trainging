#!/bin/bash

source venv/bin/activate

file="run_spectral_classification.py"

echo "Running $file..."

python ${file} \
    --dataset_name datasets/lamost \
    --model_name_or_path pretrained/spect \
    --output_dir ./outputs/spect-base \
    --do_train \
    --do_eval \
    --do_predict \
    --evaluation_strategy steps \
    --per_device_train_batch_size 64 \
    --per_device_eval_batch_size 64 \
    --num_train_epochs 5 \
    --logging_steps 50 \
    --save_total_limit 1 \
    --seed 3047 \
    --eval_steps 500 \
    --remove_unused_columns false \
    --load_best_model_at_end true \
    --metric_for_best_model f1 \
    --greater_is_better true \
    --report_to tensorboard \
