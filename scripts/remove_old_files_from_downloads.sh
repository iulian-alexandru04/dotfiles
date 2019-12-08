#!/bin/bash

echo "Starting to remove old files"
find $HOME/Downloads -mtime +365 -exec rm -rfv {} \;
echo "Done"

