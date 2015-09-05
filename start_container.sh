#!/bin/bash

set -e

script_path=${BASH_SOURCE[0]}
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $script_dir

mkdir -p dist
cp *_app.sh dist/
docker run --rm -i -t -v $PWD/dist:/opt/builder \
       -e DISPLAY=$DISPLAY \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       antimony-builder /bin/bash
