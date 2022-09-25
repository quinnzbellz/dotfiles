#!/bin/bash

if ! command -v git &> /dev/null
then
	echo "Install git you dumb old git"
	exit
fi

cp -r $HOME/.screenlayout .

if [ -d "$HOME/.config" ]
then
	:
else
    mkdir $HOME/.config
fi
cp -r $HOME/.config/awesome ./.config/
