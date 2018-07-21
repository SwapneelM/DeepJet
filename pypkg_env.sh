
# export DEEPJETCORE=../DeepJetCore/DeepJetCore

THISDIR=`pwd`
# cd $DEEPJETCORE/
# source lxplus_env.sh
# cd $THISDIR
export PYTHONPATH=`pwd`/modules:$PYTHONPATH
# export DEEPJET=`pwd`
export LD_PRELOAD=$CONDA_PREFIX/lib/libmkl_core.so:$CONDA_PREFIX/lib/libmkl_sequential.so

# This path must be set manually for now but will be automated in the future
export LD_LIBRARY_PATH=$CONDA_PREFIX/lib:`pwd`/../DeepJetCore/DeepJetCore/compiled
export PATH=$CONDA_PREFIX/lib:$PATH
