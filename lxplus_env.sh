export DEEPJET=`pwd`

export PYTHONPATH=$DEEPJET/modules:$PYTHONPATH

export DEEPJETCORE=$CONDA_PREFIX/python2.7/site-packages/DeepJetCore
export LD_LIBRARY_PATH=$DEEPJETCORE/compiled:$LD_LIBRARY_PATH
export LD_PRELOAD=$CONDA_PREFIX/lib/libmkl_core.so:$CONDA_PREFIX/lib/libmkl_sequential.so

export PATH=$DEEPJETCORE/bin:$PATH
