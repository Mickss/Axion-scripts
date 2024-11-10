#!/bin/bash

if [ -z "$BASH_VERSION" ]; then
    echo "This script must be run with Bash. Please use 'bash init-vps.sh' instead of 'sh init-vps.sh'."
    exit 1
fi

SCRIPT_DIR="$(dirname "$0")"

source "$SCRIPT_DIR/create-user.sh"

create_user
