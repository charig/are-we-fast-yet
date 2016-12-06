#!/bin/bash
#set -e # make script fail on first error
SCRIPT_PATH=`dirname $0`

source $SCRIPT_PATH/script.inc
source $SCRIPT_PATH/config.inc

check_for_node

if [ "$1" = "style" ]
then
  exit 0
else
  INFO Check style of JavaScript benchmarks
  pushd $SCRIPT_PATH/../benchmarks/JavaScript
  if [ -e $SCRIPT_PATH/../node_modules/jshint/bin/jshint ]
  then
    $SCRIPT_PATH/../node_modules/jshint/bin/jshint *.js
  else
    jshint *.js
  fi
fi
