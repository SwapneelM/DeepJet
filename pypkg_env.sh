conda activate deepjetpkg

THISDIR=`pwd`
export PYTHONPATH=`pwd`/modules:$CONDA_PREFIX/lib:$PYTHONPATH
export LD_PRELOAD=$CONDA_PREFIX/lib/libmkl_core.so:$CONDA_PREFIX/lib/libmkl_sequential.so:$LD_PRELOAD

# This path must be set manually for now but will be automated in the future
export LD_LIBRARY_PATH=$CONDA_PREFIX/lib:`pwd`/../DeepJetCore/DeepJetCore/compiled:$LD_LIBRARY_PATH
export PATH=$CONDA_PREFIX/lib:$PATH
