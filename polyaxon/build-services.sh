#!/usr/bin/env bash
if [ $# -lt 2 ]
  then
    echo "You should provide at least 2 args: branch tag"
     exit 1
fi


./polyaxon/build-core.sh $1 $2
./polyaxon/build-service.sh api $2
./polyaxon/build-service.sh api-events $2
./polyaxon/build-service.sh beat $2
./polyaxon/build-service.sh monitor-namespace $2
./polyaxon/build-service.sh monitor-resources $2
./polyaxon/build-service.sh monitor-statuses $2
./polyaxon/build-service.sh sidecar $2
./polyaxon/build-service.sh workers $2
./polyaxon/build-service.sh manage $2

