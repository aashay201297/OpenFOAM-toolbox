#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ETC="$DIR/etc"
LD="$DIR:$ETC"
export LD_LIBRARY_PATH=$LD
export WM_PROJECT_DIR=$DIR
