# Cross-Document Alignment (CDA)
This is the code for our EMNLP2020 paper: Multilevel Text Alignment with Cross-Document Attention

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
You need to obtain the pre-trained contextualized embedding first to run the code.
Though there are many ways to achieve that, we recommend using the following command:

```bash
export TRAIN_FILE='this does not matter'
export TEST_FILE='your data'

python get_finetune_rep.py \
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



