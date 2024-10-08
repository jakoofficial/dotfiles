#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install zsh git stow

stow --adopt ~/dotfiles
