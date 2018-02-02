#!/usr/bin/env bash
if [ $# -lt 1 ]
  then
    echo "You should provide at least 1 args: tag"
     exit 1
fi

echo "Push image polyaxon/polyaxon-lib:$1"
docker push polyaxon/polyaxon-lib:$1
