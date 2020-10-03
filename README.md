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



Thank you for taking a look at our code!

Since we have many scripts in this folder, we want to give you some pointers that may help you navigate:

1. Please nvigate the files starting from .sh file which will point to relevant files in the /run folder.

2. If a .sh file starts with acl, ai2_ab, ai2_g, and pla, it corresponds to AAN, OC, S2ORC, and PAN tasks described
in our paper respectively.

3. You can directly take a look at d_graph_hier_mat_model_g.py and graph_hier_mat_model_g.py for our implementation for
Deep and Shallow CDA. This should be the place where magic happens.

4. For evaluation scripts, we recommend taking a look at test_pla_mask_onestep.py and test_state_dict_mask_onestep.py for
plagiarism task and citation recommendation task. They have some subtle difference for S2D task as described in the paper.

5. For finetuning BERT, see BERT-HAN folder.

6. All the external libraries are included in the environment.yml file.
