#!/bin/bash
CURRENT_DIR=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)
ROOT_PATH=$(dirname $CURRENT_DIR)
COMPILED_DIR=$ROOT_PATH/compiled
CONFIG_DIR=$ROOT_PATH/configs

echo "Building device configs into: $COMPILED_DIR"

# Clean up compiled configs path
rm -rf $COMPILED_DIR
mkdir -p $COMPILED_DIR

# Straight up copy configs into compiled directory
cp -r $CONFIG_DIR/* $COMPILED_DIR
