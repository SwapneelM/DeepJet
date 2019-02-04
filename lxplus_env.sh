'''
# Python-package original structure
export DEEPJET=`pwd`  # modify to something akin to os.path.dirname(os.path.abspath(__file__))

export PYTHONPATH=$DEEPJET/modules:$PYTHONPATH

THISDIR=`pwd`
cd $DEEPJETCORE/
# source lxplus_env.sh
cd $THISDIR
export DEEPJETCORE=$CONDA_PREFIX/python2.7/site-packages/DeepJetCore
export LD_LIBRARY_PATH=$DEEPJETCORE/compiled:$LD_LIBRARY_PATH
export LD_PRELOAD=$CONDA_PREFIX/lib/libmkl_core.so:$CONDA_PREFIX/lib/libmkl_sequential.so

export PATH=$DEEPJETCORE/bin:$PATH
'''
#export DEEPJETCORE=../DeepJetCore

#THISDIR=`pwd`
#cd $DEEPJETCORE/
#source lxplus_env.sh
#cd $THISDIR
export PYTHONPATH=`pwd`/modules:$PYTHONPATH
#export DEEPJET=`pwd`
