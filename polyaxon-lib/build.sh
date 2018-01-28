#!/usr/bin/env bash
if [ $# -lt 2 ]
  then
    echo "You should provide at least 2 args: branch tag"
     exit 1
fi

VAR_REPO=https://github.com/polyaxon/polyaxon-lib.git

echo "Clone repo $VAR_REPO"
mkdir clones
cd clones/
git clone $VAR_REPO
cd polyaxon-lib

if [ "$1" != "master" ]
  then
    echo "Using tag"
    git checkout tags/$1 -b $1
fi

echo "Copy Dockerfile"
if [ "$1" == "master" ]
    then
        cp ../../polyaxon-lib/Dockerfile.master Dockerfile
    else
        cp ../../polyaxon-lib/Dockerfile .
fi

echo "Build Base image for lib:$2"
docker build -t polyaxon/polyaxon-lib:$2 .

echo "Clean up"
cd ../..
rm -rf clones
