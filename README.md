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
Put all data in file `./XSum`
