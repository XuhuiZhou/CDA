python train_bert_g.py \
--lr=0.00001 \
--batch_size=256 \
--hidden_size=50 \
--max_len=15 \
--train_set='data/cite_ai2/train_ai2_ab.csv' \
--test_set='data/cite_ai2/dev_ai2_ab.csv' \
--saved_path='ai2_ab_model' \
--model_type='Bert_han_sg_g' \
