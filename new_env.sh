
export DEEPJETCORE=../DeepJetCore

THISDIR=`pwd`
cd $DEEPJETCORE/
source new_env.sh
cd $THISDIR
export PYTHONPATH=`pwd`/modules:`pwd`/modules/datastructures:`pwd`/modules/models:$PYTHONPATH
export DEEPJET=`pwd`
