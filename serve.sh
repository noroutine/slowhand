#!/usr/bin/env bash
set -e

PORT=8080
URL="http://localhost:$PORT"

echo "Serving at $URL — Ctrl+C to stop"

{ sleep 0.5 && { command -v open &>/dev/null && open "$URL" || xdg-open "$URL"; }; } &

if command -v python3 &>/dev/null; then
  python3 -m http.server $PORT
elif command -v npx &>/dev/null; then
  npx --yes serve -l $PORT
else
  echo "No suitable server found (need python3 or npx)" && exit 1
fi
