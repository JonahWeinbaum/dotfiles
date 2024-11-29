#!/bin/bash

# Installs dotfiles 
safe_link(){
    local src="$1"
    local dest="$HOME/`basename $src`"
    
    if [ ! -e "$dest" ] && ln -sf "$src" "$dest"; then
	echo "Symlinking $src -> $dest"
    fi
}

# Get path
SCRIPT_PATH=`realpath $0`
DOTFILES=`dirname $SCRIPT_PATH`

# Install other dotfiles
for f in `ls -A $DOTFILES`; do
    if [[ "install.sh" != "$f" ]] && [[ ".gitignore" != "$f" ]]; then
	safe_link "$DOTFILES/$f"
    fi
done

# Set git user
[ -z `git config --global user.name` ] && git config --global user.name "JonahWeinbaum"
[ -z `git config --global user.email` ] && git config --global user.email "jonah.r.weinbaum.gr@dartmouth.edu"

