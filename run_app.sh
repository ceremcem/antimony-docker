#!/bin/bash

set -e

if [ ! -f /.dockerinit ]; then
    echo "This script needs to be run inside the Docker container"
    exit 1
fi

script_path=${BASH_SOURCE[0]}
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $script_dir

antimony/build/app/antimony
