#!/usr/bin/env bash

set -euxo pipefail

npm set //npm.pkg.github.com/:_authToken ${GITHUB_TOKEN}
npm publish --access public --dry-run

if [ ${DEPLOY:-"false"} == "true" ]
then
    npm publish --access public
fi