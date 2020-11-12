# Cross-Document Alignment (CDA)
This is the code for our EMNLP2020 paper: [Multilevel Text Alignment with Cross-Document Attention](https://arxiv.org/abs/2010.01263)

## Citation:

```bibtex
@inproceedings{Zhou2020Multilevel,
  author={Xuhui Zhou, Nikolaos Pappas, Noah A. Smith},
  title={Multilevel Text Alignment with Cross-Document Attention},
  booktitle={EMNLP},
  year={2020}
}
```

## Project Website: 
We also release a benchmark for **Document Relation Prediction and Localization**, where you can download the dataset used in our paper [here](https://xuhuizhou.github.io/Multilevel-Text-Alignment/)!

## Installation: 
```bash
conda env create -f environment.yml
conda activate dev
```

### Working with other versions of packages:
Our code has been run across many different `python`\ `pytorch`\ `transformers` versions (those are the essential packages for this projects). You can probably just use your own version of packages and run our code without further modification. Caution that we haven't tested out all models on different envs, so your results may vary from what we report in paper.


## Example commands

### Running GRU-HAN 
The following command will train a GRU-based hierachical attention network (HAN) classifier on the AAN corpus. Please modify the relative path accordingly to run the .sh script.
```bash
./run/acl_train.sh
```

* Please nvigate the files starting from .sh file which will point to relevant files in the /run folder.

* If a .sh file starts with acl, ai2_ab, ai2_g, and pla, it corresponds to AAN, OC, S2ORC, and PAN tasks described
in our paper respectively.

### Running BERT-HAN

The following command will train a BERT-based hierachical attention network (HAN) classifier on the AAN corpus. Please modify the relative path accordingly to run the .sh script.
```bash
./run/acl_train_bert.sh
```

#### Running experiments on our corpora
You need to obtain the pre-trained contextualized embedding (.npy file as well as .index file) first to run the code.
Though there are many ways to achieve that, we recommend using the following command (you can find ```get_rep.py``` in this repo):

```bash
export TRAIN_FILE='this does not matter'
export TEST_FILE='your data'

python get_rep.py \
    --output_dir=cite_models \
    --overwrite_output_dir \
    --model_type=bert \
    --per_gpu_eval_batch_size=10 \
    --model_name_or_path=bert-base-cased \
    --line_by_line \
    --train_data_file=$TRAIN_FILE \
    --special_eval \
    --eval_data_file=$TEST_FILE \
    --rep_name=../HAMN/data/cite_ai2/test_ai2_ab.npy \
    --mlm
```
The file takes in ``.txt``, which is the sentences of documents as input and produce sentence embeddings ``.npy`` for each sentence. During the data reading phase, those sentence embeddings are re-organized into documents with sentence embeddings with the ``.index`` file. You can use the files in ``frozen bert`` for this step.

#### Running experiments on your own corpora
If you want to run experiments on your own corpora, then you need to produce the aforementioned files. One example could be found at ```produce_txt.py```, where the input is a ``.csv`` file and the output is a ``.txt`` and ``.index`` file. 

Note that this step could be flexible. It should be fine as lone as you use a valid sentence tokenizer (I use ``nltk.tokenize.sent_tokenize``) and record the position of the positive sentences (I use ``\001`` to represent the positive sentence.) Instead of re-recognizing the positive sentences during the data reading phase, you could also genarate a  ``.csv`` file to record the positions when you tokenize the sentences, which is the case in our plagirism detection experiments.

### Running finetuning BERT-HAN
Warning: Please ensure you have GPU space exceeds 10 GB to run the fine-tuning version:

The following command will train a BERT-based hierachical attention network (HAN) classifier on the AAN corpus with BERT finetuning. Please modify the relative path accordingly to run the .sh script.
```bash
./BERT-HAN/run_ex_sent.sh
```

## Other Friendly Reminders
* For evaluating models, just find corresponding evaluation .sh scripts, they should be straightforward.
* For other scripts, they are used for variations of our experiments, some of them are reported in the paper while some are not. You can just ignore them or you can also read on.
* You can directly take a look at ``d_graph_hier_mat_model_g.py`` and ``graph_hier_mat_model_g.py`` for our implementation for
Deep and Shallow CDA. This should be the place where magic happens.
* For evaluation scripts, we recommend taking a look at test_pla_mask_onestep.py and test_state_dict_mask_onestep.py for
plagiarism task and citation recommendation task. They have some subtle difference for S2D task.



