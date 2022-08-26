#!/bin/bash
#$ -l h_rt=2:30:00  #time needed
#$ -pe smp 3 #number of cores
#$ -l rmem=4G #Maximum amount (xx) of real memory to be requested per CPU core
#$ -o ./output.txt  #This is where your output and errors are logged.
#$ -j y # normal and error outputs into a single file (the file above)
#$ -M mymaniyar1@sheffield.ac.uk #Notify you by email, remove this line if you don't like
#$ -m ea #Email you when it finished or aborted
#$ -cwd # Run job from current directory


module load apps/python/conda

source activate acp20mym-mirrorwic

# python ./run.py
python get_mirrorwic_traindata.py --data ./train_data/en_magpie_STR1_with_context_bertram.txt --lg en --random_er 60
