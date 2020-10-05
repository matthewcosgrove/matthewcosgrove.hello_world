#!/bin/bash

: "${GITHUB_REF:? GITHUB_REF must be set }"

bash --version
set -euo pipefail
env
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
galaxy_yaml_file="${SCRIPT_DIR}"/../../galaxy.yml
echo "Current galaxy.yml version""
cat ${galaxy_yaml_file} | grep version:
tag_version=${GITHUB_REF#refs/tags/v}
echo "Processing tag version v${tag_version}"
  
sed -i "/^version: /s/: .*$/: ${tag_version}/" "${galaxy_yaml_file}"

echo "Updated galaxy.yml version""
cat "${galaxy_yaml_file}" | grep version:
