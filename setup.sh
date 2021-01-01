#!/bin/bash

# variables:
dir=~/dotfiles # dot files directory
olddir=~/dotfiles_old # backup dot files directory
files="bash_aliases bash_profile tmux.conf vimrc vim ssh/config gitconfig fzf.bash fzf.zsh" # list of symlinks

# create backup
echo "Creating $olddir for backup of existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move nay existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
	echo "moving any existing dot files from ~ to $olddir"
	mv ~/.$file ~/dotfiles_old/
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done
