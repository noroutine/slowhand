#!/usr/bin/env bash
set -e

PORT=8080
URL="http://localhost:$PORT"

if command -v python3 &>/dev/null; then
  python3 -m http.server $PORT &
elif command -v npx &>/dev/null; then
  npx --yes serve -l $PORT &
else
  echo "No suitable server found (need python3 or npx)" && exit 1
fi

SERVER_PID=$!

sleep 0.5

if command -v open &>/dev/null; then
  open "$URL"
elif command -v xdg-open &>/dev/null; then
  xdg-open "$URL"
fi

echo "Serving at $URL (pid $SERVER_PID) — Ctrl+C to stop"
wait $SERVER_PID
