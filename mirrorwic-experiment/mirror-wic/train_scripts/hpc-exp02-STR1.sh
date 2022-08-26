#!/bin/bash
#$ -l h_rt=60:00:00  #time needed
#$ -pe smp 4 #number of cores
#$ -l rmem=4G #Maximum amount (xx) of real memory to be requested per CPU core
#$ -l gpu=2 # Number of GPUs per every CPU core
#$ -o ./output-exp02-STR1_dropout0_1_15epochs.txt  #This is where your output and errors are logged.
#$ -j y # normal and error outputs into a single file (the file above)
#$ -M mymaniyar1@sheffield.ac.uk #Notify you by email, remove this line if you don't like
#$ -m ea #Email you when it finished or aborted
#$ -cwd # Run job from current directory

# exp01 - Running mirrorwic on full idioms without single-token repr

module load apps/python/conda
# Only needed if we're using GPU* Load the CUDA and cuDNN module
module load libs/cudnn/8.2.1.32/binary-cuda-11.3.0
source activate acp20mym-mirrorwic

# python ./run.py
# 1st stage : python get_mirrorwic_traindata.py --data ./train_data/en_wiki.txt --lg en --random_er 10
bash ./mirror_wic_STR1.sh 1,0 ../train_data/en_magpie_STR1_with_context.txt.mirror.wic.re60 ../input_models/bert-base-uncased_MaskedLM_STR_option1 0.1
