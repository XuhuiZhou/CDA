python train_g.py \
--lr=0.00001 \
--batch_size=256 \
--train_set='data/cite_ai2/train_ai2_gorc.csv' \
--test_set='data/cite_ai2/dev_ai2_gorc.csv' \
--word2vec_path='data/word_embedding/glove.6B.50d.txt' \
--max_sent_words="39,21" \
--graph=0 \
--tune=1 \
--model_name='model_han_ai2g' \
