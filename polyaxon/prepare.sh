#!/usr/bin/env bash
if [ $# -lt 1 ]
  then
    echo "You should provide at least 1 args: branch"
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
    git fetch --all --tags --prune

    if
        git rev-parse $1 >/dev/null 2>&1
    then
        git checkout tags/$1 -b $1
        echo "Using tag"
        cd ../
        touch is_tag
    else
        git checkout $1
        echo "Using branch"
    fi

fi
