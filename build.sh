#!/usr/bin/env bash
if [ $# -ne 1 ]
  then
    echo "You should provide 1 args"
     exit 1
fi

PY_VER_DIR="py$1"

echo "Build Base image for $PY_VER_DIR"
if [ $1 -eq 2 ]
  then
    docker build -f $PY_VER_DIR/DockerfileBase -t polyaxon/polyaxon-base2 .
  else
    docker build -f $PY_VER_DIR/DockerfileBase -t polyaxon/polyaxon-base .
fi

echo "Build Base npm image py$1"
if [ $1 -eq 2 ]
  then
    docker build -f $PY_VER_DIR/DockerfileBaseNpm -t polyaxon/polyaxon-npm-base2 .
  else
    docker build -f $PY_VER_DIR/DockerfileBaseNpm -t polyaxon/polyaxon-npm-base .
fi

