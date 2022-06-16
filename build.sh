#!/usr/bin/env bash
set -o errexit
set -o nounset
SCRIPT_PATH="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd -P)"
function die() {
  echo "ERROR $? IN ${BASH_SOURCE[0]} AT LINE ${BASH_LINENO[0]}" 1>&2
  exit 1
}
trap die ERR

cmake -S "${SCRIPT_PATH}" -B "${SCRIPT_PATH}/cmake-build"
make -C "${SCRIPT_PATH}/cmake-build" allTests
