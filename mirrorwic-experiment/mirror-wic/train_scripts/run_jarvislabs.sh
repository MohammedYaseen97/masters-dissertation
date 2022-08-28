# bash ./mirror_wic.sh 1,0 ../train_data/en_magpie_with_context.txt.mirror.wic.re60 bert-base-uncased 0.1 > output_exp01_15epochs_dropout0_1.txt 2>&1
bash ./mirror_wic_STR1.sh 1,0 ../train_data/en_magpie_STR1_with_context.txt.mirror.wic.re60 ../input_models/bert-base-uncased_MaskedLM_STR_option1 0.1 > output_exp02-STR1_15epochs_dropout0_1.txt 2>&1
