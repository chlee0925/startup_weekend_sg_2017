#!/bin/sh

INPUT_PATH=$1
OUTPUT_PATH=$2
MODEL_WEIGHT=$(pwd)/ref-data/gender/21936

python guess.py --model_type inception --class_type gender --model_dir $MODEL_WEIGHT --filename $INPUT_PATH --face_detection_model weight/YOLO_tiny.ckpt --face_detection_type yolo_tiny --target $OUTPUT_PATH


