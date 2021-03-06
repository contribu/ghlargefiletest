#!/bin/bash

# usage
# curl -L https://raw.githubusercontent.com/contribu/ghlargefiletest/master/download.sh | OUTPUT=/path/to/output sh

set -ex

dir=$(mktemp -d)

(
cd $dir
seq 0 0 | xargs -n1 -P10 bash -c 'curl -L https://github.com/contribu/ghlargefiletest/raw/master/$0.xz | xz -d > $0'
cat $(seq 0 0) > output
)

mv "${dir}/output" $OUTPUT
rm -rf $dir

