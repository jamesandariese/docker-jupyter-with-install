#!/bin/bash

[ x"$PIP_INSTALL" != x ] && python3 -c "import shlex,sys;sys.stdout.write('\0'.join(shlex.split(sys.argv[1])))" "$PIP_INSTALL" | xargs -0 -L 1 pip install

RV=$?

if [ $RV -ne 0 ];then
    echo "Failed to pip install"
    exit $RV
fi

exec /usr/local/bin/start-notebook.sh
