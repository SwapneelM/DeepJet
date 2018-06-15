
export DEEPJETCORE=../DeepJetCore

THISDIR=`pwd`
cd $DEEPJETCORE/
source new_env.sh
cd $THISDIR
export PYTHONPATH=`pwd`/modules:$PYTHONPATH
export DEEPJET=`pwd`
