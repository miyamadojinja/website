#!/bin/bash
set -euo pipefail

# Only Hugo is needed for the public website.
if ! command -v hugo >/dev/null 2>&1; then
  echo "Hugo is required. See https://gohugo.io/installation/" >&2
  exit 1
fi

hugo version
