

DeepJet: Repository for training and evaluation of deep neural networks for Jet identification
===============================================================================

This package depends on DeepJetCore (https://github.com/DL4Jets/DeepJetCore)

Setup (CERN)
==========

The DeepJet package and DeepJetCore have to share the same parent directory

Usage
==============

After logging in, please source the right environment (please cd to the directory first!):
```
cd DeepJet
source lxplus_env.sh
```


The preparation for the training consists of the following steps
====

- define the data structure for the training (example at `modules/datastructures/TrainData_DeepJet.py`)
  for simplicity, copy the file to `TrainData_your_template.py` and adjust it. 
  Define a new class name (e.g. TrainData_your_template), **leave the inheritance from the original `TrainData_DeepJet` file untouched**
  
- convert the root file to the data strucure for training from `DeepJetCore/bin`:
  ```
  convertFromRoot.py -i /path/to/the/root/ntuple/list_of_root_files.txt -o /output/path/that/needs/some/disk/space -c TrainData_myclass
  ```
  
  This step can take a while.
  
- prepare the training file and the model. Please refer to DeepJet/Train/XXX_template.reference.py


Training
====

Since the training can take a while, it is advised to open a screen session, such that it does not die at logout.
```
ssh lxplus.cern.ch
<note the machine you are on, e.g. lxplus058>
screen
ssh lxplus7
```
Then source the environment, and proceed with the training. Detach the screen session with ctr+a d.
You can go back to the session by logging in to the machine the session is running on (e.g. lxplus58):

```
ssh lxplus.cern.ch
ssh lxplus058
screen -r
``` 

Please close the session when the training is finished

the training is launched in the following way:
```
python train_template.py /path/to/the/output/of/convert/dataCollection.dc <output dir of your choice>
```


Evaluation
====

After the training has finished, the performance can be evaluated.
The evaluation consists of a few steps:

1) converting the test data
```
convertFromRoot.py --testdatafor <output dir of training>/trainsamples.dc -i /path/to/the/root/ntuple/list_of_test_root_files.txt -o /output/path/for/test/data
```

2) applying the trained model to the test data
```
predict.py <output dir of training>/KERAS_model.h5  /output/path/for/test/data/dataCollection.dc <output directory>
```
This creates output trees. and a tree_association.txt file that is input to the plotting tools

There is a set of plotting tools with examples in 
DeepJet/Train/Plotting


