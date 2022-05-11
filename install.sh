#!/bin/bash

IMAGE_TO_INSTALL="Kubuntu.txt"

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

# Backup the config in case the user wants to reset it
cp "$HOME/.config/neofetch/config.conf" "$HOME/.config/neofetch/config.conf.bak"

cp "$SCRIPT_DIR/$IMAGE_TO_INSTALL" "$HOME/.config/neofetch/"
cp "$SCRIPT_DIR/config.conf" "$HOME/.config/neofetch/config.conf"



echo "In order to call neofetch with the image I will have to add an alias to your
.bashrc / .zshrc. Please enter [y] if you are okay with that."

read -n1 -r input

if [[ $input == "Y" || $input == "y" ]]; then
    alias_str="

alias neofetch=\"neofetch --ascii \$HOME/.config/neofetch/$IMAGE_TO_INSTALL --ascii_colors 1 6 7 2 3 4 5\"

"
    echo "$alias_str" >> "$HOME/.bashrc"
    echo "$alias_str" >> "$HOME/.zshrc"

    # Only create this file, if the fish directory exists. Otherwise it may fail
    if [ -d "$HOME/.config/fish" ]; then
        echo "$alias_str" >> "$HOME/.config/fish/config.fish"
    fi

else
    echo "
You need to set an alias for neofetch such that correct colors and image are
displayed. You can do so by placing the following alias into your shell init file:

    alias neofetch=\"neofetch --ascii \$HOME/.config/neofetch/$IMAGE_TO_INSTALL --ascii_colors 1 6 7 2 3 4 5\"
"
fi
