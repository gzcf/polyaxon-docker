#!/usr/bin/env bash
if [ $# -lt 1 ]
  then
    echo "You should provide at least 1 args: tag"
     exit 1
fi


./polyaxon/build-core.sh $1
./polyaxon/build-service.sh api $1
./polyaxon/build-service.sh api-events $1
./polyaxon/build-service.sh beat $1
./polyaxon/build-service.sh monitor-namespace $1
./polyaxon/build-service.sh monitor-resources $1
./polyaxon/build-service.sh monitor-statuses $1
./polyaxon/build-service.sh sidecar $1
./polyaxon/build-service.sh workers $1
./polyaxon/build-service.sh manage $1

