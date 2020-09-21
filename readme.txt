Hi Reviewers:
Thank you for spending your precious time taking a look at our code!
For different tasks, we have different scripts for them for now. 
We will unify them for other NLP practitionars' convenience upon acceptence.
Since we have many scripts in this folder, we want to give you some pointers that may help you navigate:
1. Please nvigate the files starting from .sh file which will point to relevant files.

2. If a .sh file starts with acl, ai2_ab, ai2_g, and pla, it corresponds to AAN, OC, S2ORC, and PAN tasks described
in our paper respectively.

3. You can directly take a look at d_graph_hier_mat_model_g.py and graph_hier_mat_model_g.py for our implementation for
Deep and Shallow CDA.  

4. For evaluation scripts, we recommend taking a look at test_pla_mask_onestep.py and test_state_dict_mask_onestep.py for
plagiarism task and citation recommendation task. They have some subtle difference for S2D task as described in the paper.

5. We merge files from different servers without further testing, which some files may be inconsistant as experiments.
(we will ensure all the settings are the same as experiments for official code.)

6. For finetuning BERT, see BERT-HAN folder.

7. All the external libraries are included in the environment.yml file.
