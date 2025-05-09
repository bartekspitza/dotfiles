#!/bin/bash

# Ask Y/n
function ask() {
    read -p "$1 (Y/n): " resp
    if [ -z "$resp" ]; then
        response_lc="y" # empty is Yes
    else
        response_lc=$(echo "$resp" | tr '[:upper:]' '[:lower:]') # case insensitive
    fi

    [ "$response_lc" = "y" ]
}

# Check what shell is being used
SH="${HOME}/.bashrc"
ZSHRC="${HOME}/.zshrc"
if [ -f "$ZSHRC" ]; then
	SH="$ZSHRC"
fi

echo >> $SH
echo '# -------------- bartekspitza:dotfiles install ---------------' >> $SH

# Ask which files should be sourced
echo "Do you want $SH to source: "
for file in shell/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        if ask "${filename}?"; then
            echo "source $(realpath "$file")" >> "$SH"
        fi
    fi
done

echo '# -------------- bartekspitza:dotfiles install ---------------' >> $SH

# Tmux conf
if ask ".tmux.conf?"; then
    ln -s "$(realpath ".tmux.conf")" ~/.tmux.conf
fi

# Vim conf
if ask ".vimrc?"; then
    ln -s "$(realpath ".vimrc")" ~/.vimrc
fi

# i3 WM
if ask "i3 and related config files?"; then
    ln -s "$(realpath "i3.config")" ~/.config/i3/config
    ln -s "$(realpath "i3status.config")" ~/.config/i3status/config
    ln -s "$(realpath "dunst.config")" ~/.config/dunst/dunstrc
fi
