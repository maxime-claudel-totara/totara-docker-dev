#!/usr/bin/env bash

export $(egrep -v '^#' .env | xargs)

# You can specify a subdirectory as first parameter to this script if needed
MYPATH=$REMOTE_SRC/$1

echo "Starting grunt tasks..."
./totara-docker.sh run nodejs sh -c "cd $MYPATH && ./node_modules/grunt-cli/bin/grunt"