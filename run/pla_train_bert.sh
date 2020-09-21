python train_bert_g.py \
--lr=0.00001 \
--batch_size=256 \
--max_len=60 \
--train_set='pla/pla_new_data/pla_train.csv' \
--test_set='pla/pla_new_data/pla_dev.csv' \
--model_type='Bert_han_sg_nolinear' \
--saved_path='pla/pla_model_new'
