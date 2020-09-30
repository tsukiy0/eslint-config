#!/usr/bin/env bash

set -euxo pipefail

npm publish --access public --dry-run
