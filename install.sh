#!/bin/bash
echo "Start install dotfile, make sure you have git, vim, screen, tmux, tmuxinator in your machine already"

echo "Git clone from Github"
git clone https://github.com/xinbenlv/dotfiles.git ~/dotfiles
echo "Set up submodules"
cd ~/dotfiles
git submodule init
git submodule sync
git submodule update

echo "Backup old files to ~/dotfils.bak"

mkdir ~/dotfiles.bak

echo "Set up bashrc"
mv ~/.bashrc ~/dotfiles.bak
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/bashrc ~/.bash_profile


echo "Set up vim"
mv ~/.vimrc ~/dotfiles.bak
mv ~/.vim ~/dotfiles.bak
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim

echo "Set up screenrc"
mv ~/.screenrc ~/dotfiles.bak
ln -s ~/dotfiles/screenrc ~/.screenrc

echo "Set up tmux"
mv ~/.tmux.conf ~/dotfiles.bak
mv ~/.tmuxinator ~/dotfiles.bak
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/tmuxinator ~/.tmuxinator
mv ~/.tmux-powerlinerc ~/dotfiles.bak
ln -s ~/dotfiles/tmux-powerlinerc ~/.tmux-powerlinerc

echo "Set up emacs"
mv ~/.emacs ~/dotfiles.bak
ln -s ~/dotfiles/emacs ~/.emacs

mv ~/.emacs.d ~/dotfiles.bak
ln -s ~/dotfiles/emacs.d ~/.emacs.d


echo "Set up gitconfig"
mv ~/.gitconfig ~/.dotfiles.bak
ln -s ~/dotfiles/gitconfig ~/.gitconfig


echo "Finished."
echo "You will need to install powerline-font yourself, we recommend DejaVuSansMono"
echo "https://github.com/Lokaltog/powerline-fonts/tree/master/DejaVuSansMono"
echo "You will need to launch vim and then do :BundleInstall to finish the vundle plugin installation"



