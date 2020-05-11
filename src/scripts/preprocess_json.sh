#!/bin/bash

RAW_PATH=../../XSum/xsum_
JSON_PATH=../../jsons/xsum

python preprocess.py \
	-mode format_xsum_to_lines_easy \
	-raw_path ${RAW_PATH} \
	-save_path ${JSON_PATH} \
	-n_cpus 30 \
	-log_file ../../logs/cnndm.log \
