#!/bin/bash

# Run this from the git hook: .git/hooks/pre-commit

# Get the directory of this script
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

EMACS_PACKAGES="$( "$DIR/print-installed-packages.el" 2> /dev/null | tail -n +2 )"

# TODO instead of overwriting the installed-packages.el file, we should see if
# something is there, and if so add unique packages to the package list
echo "(defvar dbm-package-list '$EMACS_PACKAGES)" > "${DIR}/../etc/installed-packages.el"
