#!/bin/bash
set -euo pipefail

# Start the public Hugo site. No Node.js/npm dependency is required.
this_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

"$this_dir/check-dependencies.sh"
exec "$this_dir/serve-site.sh"
