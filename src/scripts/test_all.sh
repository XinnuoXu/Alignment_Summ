#!/bin/bash

BERT_DATA_PATH=../../data/xsum
MODEL_PATH=../../models/

python train.py \
	-task abs \
	-mode validate \
	-test_all \
	-batch_size 3000 \
	-test_batch_size 500 \
	-bert_data_path ${BERT_DATA_PATH} \
	-log_file ../../logs/val_abs_bert_cnndm \
	-model_path ${MODEL_PATH} \
	-sep_optim true \
	-use_interval true \
	-visible_gpus 0,1,2 \
	-max_pos 512 \
	-min_length 20 \
	-max_length 100 \
	-alpha 0.9 \
	-result_path ../../logs/abs_bert_cnndm