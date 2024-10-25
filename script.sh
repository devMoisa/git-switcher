#!/bin/bash
# Author: Moisés Vilas Boas
# Contact: moisesboas@gmail.com

# Paths for the configuration profiles stored in ~/.config/gitswitcher
PROFILE01="$HOME/.config/gitswitcher/profile01.sh"
PROFILE02="$HOME/.config/gitswitcher/profile02.sh"
GLOBAL_CONFIG="$HOME/.gitconfig"

# Function to change profile
switch_profile() {
    case "$1" in
        profile01)
            cp "$PROFILE01" "$GLOBAL_CONFIG"
            echo "Switched to profile 01."
            ;;
        profile02)
            cp "$PROFILE02" "$GLOBAL_CONFIG"
            echo "Switched to profile 02."
            ;;
        *)
            echo "Usage: $0 --set [profile01|profile02]"
            exit 1
            ;;
    esac
}

# Checks if the argument has been supplied
if [ "$1" == "--set" ] && [ -n "$2" ]; then
    switch_profile "$2"
else
    echo "Usage: $0 --set [profile01|profile02]"
    exit 1
fi

