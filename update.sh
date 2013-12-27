#!/bin/bash

if [ -f ~/bin/paths-11.0.sh ]; then
        source ~/bin/paths-11.0.sh
fi

if [ "${android}" = "" ]; then
        android=~/android/system
fi
cherries+=(48673)

${android}/build/tools/repopick.py -b ${cherries[@]}
