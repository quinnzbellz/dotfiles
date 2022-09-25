#!/bin/bash


# Check if Git is installed
if ! command -v git &> /dev/null
then
	echo "Install git you dumb old git"
	exit
fi

#Check if .config directory exists
if [ -d "$HOME/.config" ]
then
	:
else
    mkdir $HOME/.config
fi

# Copy dotfiles into repo
cp -r $HOME/.config/awesome ./.config/
cp -r $HOME/.config/alacritty ./.config/
cp -r $HOME/.config/fish ./.config/
cp -r $HOME/.config/micro ./.config/
cp -r $HOME/.bashrc .
cp -r $HOME/.screenlayout .

# Push To Github
git add .
git commit -m "Update to dotfiles"
git push
