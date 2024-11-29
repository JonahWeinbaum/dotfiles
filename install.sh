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

exclude_list=("install.sh" ".gitignore", ".fonts", ".bashrc", ".zshrc")

# Install other dotfiles
for f in `ls -A $DOTFILES`; do
    if [[ "install.sh" != "$f" ]] && [[ ".gitignore" != "$f" ]]; then
	safe_link "$DOTFILES/$f"
    fi
done

if [[ -e "$HOME/`basename .bashrc`" ]]; then
    echo "Detected bash terminal"
    read -p "Are you sure you want to delete '.bashrc'? (y/n): " response

    if [[ "$response" == "y" ]] || [[ "$response" == "Y" ]]; then
       rm "$HOME/`basename .bashrc`"
       echo "$HOME/`basename .bashrc` has been deleted."
    else
       echo "$HOME/`basename .bashrc` was not deleted."
    fi
    safe_link "$DOTFILES/.bashrc"
fi

if [[ -e "$HOME/`basename .zshrc`" ]]; then
    echo "Detected bash terminal"
    read -p "Are you sure you want to delete '.zshrc'? (y/n): " response

    if [[ "$response" == "y" ]] || [[ "$response" == "Y" ]]; then
       rm "$HOME/`basename .zshrc`"
       echo "$HOME/`basename .zshrc` has been deleted."
    else
       echo "$HOME/`basename .zshrc` was not deleted."
    fi
    safe_link "$DOTFILES/.zshrc"
fi


# Set git user
[ -z `git config --global user.name` ] && git config --global user.name "JonahWeinbaum"
[ -z `git config --global user.email` ] && git config --global user.email "jonah.r.weinbaum.gr@dartmouth.edu"

