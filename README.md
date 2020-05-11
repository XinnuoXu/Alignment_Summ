# Alignment_Summ

## Environment setup

```
(Install conda: wget https://repo.anaconda.com/archive/Anaconda2-2019.10-Linux-x86_64.sh; bash ~/Downloads/Anaconda2-2019.10-Linux-x86_64.sh; Reload)
conda create -n Highlight python=3.6
conda activate Highlight
conda install pytorch=1.1.0 torchvision cudatoolkit=10.0 -c pytorch
(or conda install pytorch torchvision cudatoolkit=10.0 -c pytorch; conda install pytorch=1.1.0 -c soumith)

pip install multiprocess
pip install pytorch_transformers
pip install pyrouge
pip install tensorboardX
```

## Data processing
Put all data in file `./XSum` and run
```
cd ./src
sh ./scripts/preprocess_json.sh
sh ./scripts/preprocess.sh
```

## Model training
Stay in `./src` and run 
```
sh ./scripts/train.sh
```
All checkpoints will be saved in `./models`

## Validation and test for top 5 models
Stay in `./src` and run 
```
sh ./scripts/test_all.sh
```

## Test specific model
Stay in `./src` and edit `-test_from` in file `./scripts/test.sh`. Run
```
sh ./scripts/test.sh
```
Results will be saved in three files in `./logs`
```
abs_bert_cnndm.{model_checkpoint_num}.gold
abs_bert_cnndm.{model_checkpoint_num}.candidate
abs_bert_cnndm.{model_checkpoint_num}.raw_src
```
