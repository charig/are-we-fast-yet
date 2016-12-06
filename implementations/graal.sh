#!/bin/bash
SCRIPT_PATH=`dirname $0`
source $SCRIPT_PATH/config.inc
echo $GRAAL_CORE_CMD $GRAAL_JIT_FLAGS "$@"
exec $GRAAL_CORE_CMD $GRAAL_JIT_FLAGS "$@"
