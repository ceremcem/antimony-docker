script_path=${BASH_SOURCE[0]}
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $script_dir

docker run --rm -i -t -v $PWD:/opt/builder antimony-builder /bin/bash
