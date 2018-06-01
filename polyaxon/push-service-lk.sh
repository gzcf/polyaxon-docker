#!/usr/bin/env bash
if [ $# -lt 2 ]
  then
    echo "You should provide at least 2 args: image tag"
     exit 1
fi

echo "Push image polyaxon/polyaxon-$1:$2"
docker tag polyaxon/polyaxon-$1:$2 reg.linkdoc-inc.com/polyaxon/polyaxon-$1:$2
docker push reg.linkdoc-inc.com/polyaxon/polyaxon-$1:$2
