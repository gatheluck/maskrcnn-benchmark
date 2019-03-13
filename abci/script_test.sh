#!/bin/bash

#$ -l rt_F=1
#$ -l h_rt=24:00:00
#$ -j y
#$ -N mrcnn_res50_IN
#$ -o /home/aaa10329ah/user/waseda/abci_log/mrcnn_resnet50_IN.o

source /etc/profile.d/modules.sh
module load cuda/9.0/9.0.176.4
export PATH="/home/aaa10329ah/anaconda3/bin:${PATH}"
source activate mrcnn
cd /home/aaa10329ah/user/waseda/mask-rcnn
# script

python tools/train_net.py -l logs/test \
													--config_file ./configs/e2e_faster_rcnn_R_50_C4_1x.yaml