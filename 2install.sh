#!/bin/bash

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
        filename=`basename "$file"`
        read -p "${filename}? (Y/n): " resp

        if [ -z "$resp" ]; then
            response_lc="y" # empty is Yes
        else
            response_lc=$(echo "$resp" | tr '[:upper:]' '[:lower:]') # case insensitive
        fi

        if [ "$response_lc" = "y" ]; then
            echo "source $(realpath "$file")" >> "$SH"
        fi
    fi
done
echo '# -------------- bartekspitza:dotfiles install ---------------' >> $SH


# Tmux conf
read -p "Do you want to install .tmux.conf? (Y/n)" resp
if [ -z "$resp" ]; then
    response_lc="y" # empty is Yes
else
    response_lc=$(echo "$resp" | tr '[:upper:]' '[:lower:]') # case insensitive
fi

if [ "$response_lc" = "y" ]; then
	ln -s `realpath .tmux.conf` ~/.tmux.conf
fi

# Vim conf
read -p "Do you want to install .vimrc? (Y/n)" resp
if [ -z "$resp" ]; then
    response_lc="y" # empty is Yes
else
    response_lc=$(echo "$resp" | tr '[:upper:]' '[:lower:]') # case insensitive
fi

if [ "$response_lc" = "y" ]; then
	ln -s `realpath .vimrc` ~/.vimrc
fi
