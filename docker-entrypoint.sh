#!/bin/bash

[[ $DEBUG ]] && set -x

LISTEN_PORT=${LISTEN_PORT:-18888}
FORWARD_ADDR=${FORWARD_ADDR:-10.0.1.14}
FORWARD_PORT=${FORWARD_PORT:-18888}

sleep ${PAUSE:-0}

exec /opt/goodrain/gost/gost -D -L=:${LISTEN_PORT} -F=http+https://${FORWARD_ADDR}:${FORWARD_PORT}
