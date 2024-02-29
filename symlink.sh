#!/usr/bin/env bash

# Symlink home files


#BACKUP=$(date +'%Y-%m-%d-%M-%N')


#if [ -d "$HOME/.dotfiles/backup/$BACKUP" ]; then
#	rm -rf "$HOME/.dotfiles/backup/$BACKUP"
#fi
#mkdir "$HOME/.dotfiles/backup/$BACKUP"
#mkdir "$HOME/.dotfiles/backup/$BACKUP/config"
#mkdir "$HOME/.dotfiles/backup/$BACKUP/home"



for DOTFILE in `find $HOME/.dotfiles/home -type f -printf "%f\n"`
do
	[ -f "$HOME/.dotfiles/home/$DOTFILE" ] && ln -sf "$HOME/.dotfiles/home/$DOTFILE" "$HOME/$DOTFILE"
done



# Symlink .config directories
for CONFIG in `find $HOME/.dotfiles/config -type d -printf "%f\n"`
do	
	[ -d "$HOME/.dotfiles/config/$CONFIG" ] && ln -sf "$HOME/.dotfiles/config/$CONFIG" "$HOME/.config/$CONFIG"
done

# Symlink .config files
for CONFIG in `find $HOME/.dotfiles/config -type f -printf "%f\n"`
do
	[ -f "$HOME/.dotfiles/config/$CONFIG" ] && ln -sf "$HOME/.dotfiles/config/$CONFIG" "$HOME/.config/$CONFIG"
done