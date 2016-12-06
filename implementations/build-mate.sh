#!/bin/bash
#set -e # make script fail on first error
SCRIPT_PATH=`dirname $0`
source $SCRIPT_PATH/script.inc
source $SCRIPT_PATH/config.inc

INFO Build TruffleMATE
if [ "$1" = "style" ]
then
  exit 0
else
  load_submodule $SCRIPT_PATH/TruffleMATE
  pushd $SCRIPT_PATH/TruffleMATE
  make clean; make
fi
OK TruffleMATE Build Completed.
