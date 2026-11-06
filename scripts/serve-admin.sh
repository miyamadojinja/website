#!/bin/bash
set -euo pipefail

# Optional: Decap CMS local backend. The public site does not use Node.js.
if ! command -v npx >/dev/null 2>&1; then
  echo "Local Decap CMS requires Node.js/npm (npx)." >&2
  echo "The public Hugo site works without it: ./scripts/dev.sh" >&2
  exit 1
fi

this_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
project_root="${this_dir}/.."
cd "$project_root"

exec npx decap-server
