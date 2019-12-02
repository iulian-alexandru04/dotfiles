#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

echo "Starting to remove old files"

find $HOME/Downloads -ctime +365 -print0 | xargs --null rm -r

echo "Done"
