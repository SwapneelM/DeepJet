
# export DEEPJETCORE=../DeepJetCore/DeepJetCore
conda activate deepjetpkg

THISDIR=`pwd`
# cd $DEEPJETCORE/
# cd $THISDIR
export PYTHONPATH=`pwd`/modules:$CONDA_PREFIX/lib:$PYTHONPATH
# export DEEPJET=`pwd`
export LD_PRELOAD=$CONDA_PREFIX/lib/libmkl_core.so:$CONDA_PREFIX/lib/libmkl_sequential.so
# export LD_PRELOAD=$CONDA_PREFIX/lib/libCore.so:$LD_PRELOAD

# This path must be set manually for now but will be automated in the future
export LD_LIBRARY_PATH=$CONDA_PREFIX/lib:`pwd`/../DeepJetCore/DeepJetCore/compiled
export PATH=$CONDA_PREFIX/lib:$PATH
