#!/usr/bin/env bash
set -eo pipefail

full_path=$(realpath $0)
dir_path=$(dirname $full_path)

if [ -n "$OTEL_COLLECTOR_PATH" ]; then
  otel_collector_path=$OTEL_COLLECTOR_PATH
else
  otel_collector_path=$dir_path/opentelemetry-collector-contrib
fi

cd $otel_collector_path
make docker-otelcontribcol
cd -

docker-compose build --no-cache  
