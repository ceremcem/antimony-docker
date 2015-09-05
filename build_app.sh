#!/bin/bash

set -e

if [ ! -f /.dockerinit ]; then
    echo "This script needs to be run inside the Docker container"
    exit 1
fi

script_path=${BASH_SOURCE[0]}
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $script_dir

git clone https://github.com/mkeeter/antimony
cd antimony
git checkout tags/0.9.0c
mkdir build
cd build
qmake ../sb.pro
make -j2
