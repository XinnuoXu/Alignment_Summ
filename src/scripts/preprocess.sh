#!/bin/bash

JSON_PATH=../../jsons/
BERT_DATA_PATH=../../data/

python preprocess.py \
	-mode format_to_bert \
	-raw_path ${JSON_PATH} \
	-save_path ${BERT_DATA_PATH} \
      	-lower \
	-n_cpus 30 \
	-log_file ../../logs/preprocess.log
