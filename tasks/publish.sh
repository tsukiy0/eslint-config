#!/usr/bin/env bash

set -euxo pipefail

yarn install --silent
npm publish --access public --dry-run
