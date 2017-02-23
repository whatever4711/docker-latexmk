#!/bin/sh
set -eo pipefail

tlmgrinstall() {
  local file="/default-packages.txt"
  if [ -f "${PWD}/packages.txt" ]; then
    file="${PWD}/packages.txt"
  fi
  local packages="$(cat ${file})"
  tlmgr install ${packages}
}

tlmgrinstall

exec "$@"
