#!/bin/bash

source venv/bin/activate

file="run_galaxy_classification.py"

echo "Running $file..."

python ${file} \
    --dataset_name datasets/Galaxy10 \
    --model_name_or_path pretrained/resnet18 \
    --ignore_mismatched_sizes \
    --output_dir ./outputs/resnet18 \
    --do_train \
    --do_eval \
    --evaluation_strategy epoch \
    --per_device_train_batch_size 64 \
    --per_device_eval_batch_size 64 \
    --num_train_epochs 10 \
    --logging_steps 20 \
    --save_strategy epoch \
    --save_total_limit 1 \
    --seed 3047 \
    --remove_unused_columns false \
    --load_best_model_at_end true \
    --metric_for_best_model f1 \
    --greater_is_better true \
    --report_to tensorboard \
    --overwrite_output_dir

  
