#!/bin/bash

# usage
# curl https://raw.githubusercontent.com/contribu/ghlargefiletest/master/download.sh | OUTPUT=/path/to/output sh

set -ex

dir=$(mktemp -d)
cd $dir
curl -L https://raw.githubusercontent.com/contribu/ghlargefiletest/master/0 > 0

cat 0 > $OUTPUT
rm -rf $dir
