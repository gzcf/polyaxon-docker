#!/usr/bin/env bash
if [ $# -ne 1 ]
  then
    echo "You should provide 1 args"
     exit 1
fi

PY_VER_DIR="py$1"

echo "Build Base image for $PY_VER_DIR"
docker build -f $PY_VER_DIR/DockerfileBase -t polyaxon/polyaxon-base .

echo "Build Base npm image py$1"
docker build -f $PY_VER_DIR/DockerfileBaseNpm -t polyaxon/polyaxon-base-npm .
