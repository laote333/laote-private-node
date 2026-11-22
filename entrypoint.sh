#!/bin/sh
sed -i "s|__UUID__|${UUID}|g; s|__PORT__|${PORT:-8080}|g; s|__WS_PATH__|${WS_PATH}|g" /app/config.json
exec /app/xray run -config /app/config.json
