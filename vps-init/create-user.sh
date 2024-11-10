#!/bin/bash

if [ -z "$BASH_VERSION" ]; then
    echo "This script must be run with Bash. Please use 'bash init-vps.sh' instead of 'sh init-vps.sh'."
    exit 1
fi

NEW_USER="dg-user"

create_user() {
    echo "Will add $NEW_USER user if it does not exists"

  if id "$NEW_USER" &>/dev/null; then
    echo "User $NEW_USER already exists, skipping creation."
  else
    echo "Adding new user: $NEW_USER. Adding to sudo group and setting shell to bash"
    sudo useradd -m -G sudo -s /bin/bash $NEW_USER
    sudo passwd $NEW_USER
  fi
}

export -f create_user
