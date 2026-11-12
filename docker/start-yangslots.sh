#!/bin/sh
set -eu

if [ -n "${RENDER_EXTERNAL_HOSTNAME:-}" ]; then
  export YANGSLOTS_ALLOWED_HOSTS="${YANGSLOTS_ALLOWED_HOSTS:-localhost,127.0.0.1,$RENDER_EXTERNAL_HOSTNAME}"
  export YANGSLOTS_PUBLIC_ORIGIN="${YANGSLOTS_PUBLIC_ORIGIN:-${RENDER_EXTERNAL_URL:?}}"
  exec java -jar /app/yangslots.jar
fi

exec "$@"
