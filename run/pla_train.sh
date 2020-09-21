python train_g.py \
--lr=0.00001 \
--batch_size=256 \
--train_set='pla/pla_new_data/pla_train.csv' \
--test_set='pla/pla_new_data/pla_dev.csv' \
--word2vec_path='data/word_embedding/glove.6B.50d.txt' \
--max_sent_words="38,60" \
--graph=0 \
--tune=1 \
--model_name='model_han_pla' \
