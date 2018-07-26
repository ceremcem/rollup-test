#!/bin/bash
DIR=$(dirname "$(readlink -f "$0")")
OUTPUT="dist/browserify-bundle.js"
cd $DIR

# Create bundle
browserify --extension .ls -t browserify-livescript index.ls -o $OUTPUT
