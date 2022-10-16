#!/bin/bash

source config_v1/config_pytorch_48GB.sh

NUM_GPU=2
NUM_EXP=1

declare -A BATCH_SIZE_FIX=(
    [PyTorch_maskrcnn_FP32]=64
    [PyTorch_maskrcnn_FP16]=96
    [PyTorch_ncf_FP32]=10000000
    [PyTorch_ncf_FP16]=20000000
    [PyTorch_transformerxlbase_FP32]=64
    [PyTorch_transformerxlbase_FP16]=128
    [PyTorch_transformerxllarge_FP32]=32
    [PyTorch_transformerxllarge_FP16]=64
)

declare -A SSD_ITER_FIX=(
)

declare -A tacotron2_DATA_FIX=(
)

source config_v1/fix.sh