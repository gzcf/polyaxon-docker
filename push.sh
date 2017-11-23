#!/usr/bin/env bash

if [ $# -ne 1 ]
  then
    echo "You should provide 1 args"
     exit 1
fi

echo "Pushing base images:"
if [ $1 -eq 2 ]
  then
    docker push polyaxon/polyaxon-base2
    docker push polyaxon/polyaxon-npm-base2
  else
    docker push polyaxon/polyaxon-base
    docker push polyaxon/polyaxon-npm-base
fi
