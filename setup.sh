#!/bin/bash

# variables:
dir=~/dotfiles # dot files directory
olddir=~/dotfiles_old # backup dot files directory
files="zshrc bash_aliases bash_profile tmux.conf vimrc vim fzf.bash fzf.zsh macos" # list of symlinks

# create backup
echo "Creating $olddir for backup of existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# SymLinks for git files:
ln -sn $dir/git/gitconfig ~/.gitconfig
ln -sn $dir/git/gitignore_global ~/.gitignore_global

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
	echo "moving any existing dot files from ~ to $olddir"
	if [ -e "$file" ]; then
		echo "found $file, creating backup"
		mv ~/.$file ~/dotfiles_old/
	fi
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done

# MacOS Defaults:
echo "Loading MacOS settings"
source ~/.macos