#!/usr/bin/env bash
if [ $# -lt 1 ]
  then
    echo "You should provide at least 1 args: tag"
     exit 1
fi

VAR_REPO=https://github.com/polyaxon/polyaxon.git

echo "Clone repo $VAR_REPO"
mkdir clones
cd clones/
git clone $VAR_REPO
cd polyaxon

if [ "$1" != "master" ]
  then
    echo "Using tag"
    git checkout tags/$1
fi

echo "Copy Dockerfile and .dockerignore"
cp ../../polyaxon/.dockerignore .
if [ "$1" == "master" ]
    then
        cp ../../polyaxon/Dockerfile.master Dockerfile
    else
        cp ../../polyaxon/Dockerfile .
fi

echo "Build Base image for core:$1"
docker build -t polyaxon/polyaxon-core .

echo "Clean up"
cd ../..
rm -rf clones
