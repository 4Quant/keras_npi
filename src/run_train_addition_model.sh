#!/bin/sh

THIS_DIR=$(cd $(dirname $0); pwd)
DATA_DIR=${THIS_DIR}/../data
TRAIN_DATA=${1:-${DATA_DIR}/train.pkl}
MODEL_OUTPUT=${1:-${DATA_DIR}/addition.model}
export PYTHONPATH=${THIS_DIR}
cd $THIS_DIR

mkdir -p "$DATA_DIR"

echo python npi/add/training_model.py "$TRAIN_DATA" "$MODEL_OUTPUT"
python npi/add/training_model.py "$TRAIN_DATA" "$MODEL_OUTPUT"
