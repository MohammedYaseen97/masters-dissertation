infoce=0.04
maxlen=510
bs=16
dropout=$4	# trying 0.1 instead of 0.4 for STR2
agg='tokenmarker4layer'
rs=33
data=$2
# model="bert-base-uncased"
model=$3
CUDA_VISIBLE_DEVICES=$1 python3 train.py \
	--model_dir ${model} \
	--train_dir "${data}"  \
	--output_dir ../tmp/bert-base-uncased_${dropout}_mirror \
	--use_cuda \
	--epoch 15 \
	--train_batch_size ${bs} \
	--learning_rate 2e-5 \
	--max_length ${maxlen} \
	--checkpoint_step 50 \
	--parallel \
	--amp \
	--random_seed ${rs} \
	--loss "infoNCE" \
	--infoNCE_tau ${infoce} \
	--pairwise \
	--dropout_rate ${dropout} \
	--agg_mode ${agg} \
 	--save_checkpoint_all
