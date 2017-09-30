#!/bin/sh

INPUT_PATH=$1
OUTPUT_PATH=$2
MODEL_WEIGHT=$(pwd)/ref-data/age/22801

python guess.py --model_type inception --model_dir $MODEL_WEIGHT --filename $INPUT_PATH --face_detection_model weight/YOLO_tiny.ckpt --face_detection_type yolo_tiny --target $OUTPUT_PATH


