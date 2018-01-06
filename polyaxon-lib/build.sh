#!/usr/bin/env bash
if [ $# -lt 1 ]
  then
    echo "You should provide at least 1 args: tag"
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
    git checkout tags/$1
fi

echo "Copy Dockerfile"
if [ "$1" == "master" ]
    then
        cp ../../polyaxon-lib/Dockerfile.master Dockerfile
    else
        cp ../../polyaxon-lib/Dockerfile .
fi

echo "Build Base image for lib:$1"
if [ "$2" = "master" ]
    then
        docker build -t polyaxon/polyaxon-lib .
    else
        docker build -t polyaxon/polyaxon-lib:$1 .
fi

echo "Clean up"
cd ../..
rm -rf clones
