#/bin/sh
#if [ -x "`which nvm`" ]
#then
#  $NODE_BIN=`nvm which 6`
#  if [ ! -x "$NODE_BIN" ] ; then
    NODE_BIN="/home/guido/.nvm/versions/node/v6.9.2/bin/node"
#    NODE_BIN=node
#  fi
#else
#  NODE_BIN=node
#fi
echo $NODE_BIN
exec $NODE_BIN "$@"
