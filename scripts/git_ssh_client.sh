#!/bin/bash

gitserver()
{
    address=$1
    request=$2
    if [ $request == "list" ]; then
        ssh user@$address 'ls | grep .git'
    fi
    repo=$3
    if [ $request == "init" ]; then
        ssh user@$address 'git init --bare '$repo'.git'
    fi
    if [ $request == "url_for" ]; then
        echo 'ssh://user@'$address'/~/'$repo'.git'
    fi
    if [ $request == "rm" ]; then
        ssh user@$address 'rm -rf '$repo'.git'
    fi
}

