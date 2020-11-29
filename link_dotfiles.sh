#!/bin/bash

SCRIPT_DIR="$(cd $(dirname "${BASH_SOURCE[0]}") && pwd -P)"
/usr/bin/find "$SCRIPT_DIR" -depth 1 -name '.*' -and -not -name '.git' -exec ln -sft $HOME {} +
