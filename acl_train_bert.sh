python train_bert_g.py \
--lr=0.00001 \
--batch_size=256 \
--hidden_size=50 \
--max_len=10 \
--train_set='data/cite_acl/train_cite.csv' \
--test_set='data/cite_acl/dev_cite.csv' \
--saved_path='acl_bert_model' \
--model_type='Bert_han_sg_g' \
