dotfiles
========
Author: Zainan Victor Zhou

dot files of mine. Finally I realize that I should have my own dot files instead of using other's

## Installation
0. git clone this repository to your ~/ directory
    git clone https://github.com/xinbenlv/dotfiles.git
1. make a soft link for bashrc
    ln -s ~/dotfiles/bashrc ~/.bashrc # remember to back up your original ~/.bashrc

2. in the ~/dotfiles folder
    git submodule init
    git submodule update
    git submodule sync
3. make a soft link for vim and vimrc
    ln -s ~/dotfiles/vim ~/.vim # remember to back up your original ~/.bashrc
    ln -s ~/dotfiles/vimrc ~/.vimrc # remember to back up your original ~/.bashrc
4. make a soft link for gitconfig
    ln -s ~/dotfiles/gitconfig ~/.gitconfig
5. make a soft link for screenrc

6. install font
https://github.com/Lokaltog/powerline-fonts/tree/master/DejaVuSansMono

7. If you care about tmux, make a soft link for tmux.conf and tmuxinator

Licensed in MIT License, but I suggest everyone to create your own dotfiles



