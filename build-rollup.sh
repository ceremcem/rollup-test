#!/bin/bash
#
DIR=$(dirname "$(readlink -f "$0")")
cd $DIR

# Create bundle
lsc -cb index.ls
rollup -c ./rollup.config.js
