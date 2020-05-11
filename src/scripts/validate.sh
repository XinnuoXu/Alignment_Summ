#!/bin/bash

BERT_DATA_PATH=/scratch/xxu/bert/data/xsum
MODEL_PATH=/scratch/xxu/bert/models/

python train.py \
	-task abs \
	-mode validate \
	-test_data 50doc \
	-batch_size 1 \
	-test_batch_size 1 \
	-bert_data_path ${BERT_DATA_PATH} \
	-log_file ../logs/val_abs_bert_cnndm \
	-test_from ${MODEL_PATH}model_step_44000.pt \
	-sep_optim true \
	-use_interval true \
	-visible_gpus 3 \
	-max_pos 512 \
	-min_length 20 \
	-max_length 100 \
	-alpha 0.9 \
	-attn_debug ../logs/val_abs_bert_cnndm.attn/ \
	-result_path ../logs/abs_bert_cnndm

	#model_step_44000.pt 39.06/16.12/31.18
	#model_step_34000.pt 38.41/16.17/30.87
	#model_step_38000.pt 38.55/16.28/31.07
	#model_step_28000.pt 38.04/15.78/30.63
	#model_step_32000.pt 38.11/15.84/30.62
