#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR/public"

PORT="${PORT:-3000}"
HOST="${HOST:-0.0.0.0}"

echo "Starting static site on http://${HOST}:${PORT}"

if command -v python3 >/dev/null 2>&1; then
  exec python3 -m http.server "${PORT}" --bind "${HOST}"
fi

if command -v npx >/dev/null 2>&1; then
  exec npx serve -l "tcp://${HOST}:${PORT}" .
fi

echo "Neither python3 nor npx was found in PATH."
exit 1
