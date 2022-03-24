#!/bin/bash
set -e

node="${FLY_REGION}-$(hostname)"

exec serf agent \
  -node="$node" \
  -profile=wan \
  -join=$FLY_APP_NAME.internal \
  -bind=fly-local-6pn \
  -rpc-addr=fly-local-6pn:7373 \
  -tag region="${FLY_REGION}" \
  -event-handler=query:load=uptime
