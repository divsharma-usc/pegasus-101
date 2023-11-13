#!/bin/bash

set -e

if [ $# -ne 1 ]; then
    echo "Usage: $0 <output-prefix>"
    exit 1
fi

OUTPUT_PREFIX="$1"

for i in `seq 24`; do
    cut -d',' -f${i} "${OUTPUT_PREFIX}" > split-${i}.csv
done