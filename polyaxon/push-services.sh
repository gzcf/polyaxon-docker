#!/usr/bin/env bash
if [ $# -lt 1 ]
  then
    echo "You should provide at least 1 args: tag"
     exit 1
fi


docker push polyaxon/polyaxon-api:$1
docker push polyaxon/polyaxon-api-events:$1
docker push polyaxon/polyaxon-beat:$1
docker push polyaxon/polyaxon-monitor-namespace:$1
docker push polyaxon/polyaxon-monitor-resources:$1
docker push polyaxon/polyaxon-monitor-statuses:$1
docker push polyaxon/polyaxon-sidecar:$1
docker push polyaxon/polyaxon-workers:$1
docker push polyaxon/polyaxon-manage:$1
