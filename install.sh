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

echo "Set up zshrc"
mv ~/.zshrc ~/dotfiles.bak
ln -s ~/dotfiles/zshrc ~/.zshrc

echo "Set up vim"
mv ~/.vimrc ~/dotfiles.bak
mv ~/.vim ~/dotfiles.bak
ln -s ~/dotfiles/vimrc ~/.vimrc

echo "Set up tmux"
mv ~/.tmux.conf ~/dotfiles.bak
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

# install tmux and tmuxinator 
# TODO(zzn): find a way to handle sudo
sudo apt-get install tmux
sudo gem install tmuxinator

echo "Set up git"
mv ~/.gitconfig ~/.dotfiles.bak
ln -s ~/dotfiles/gitconfig ~/.gitconfig
mv ~/.gitignore ~/.gitignore.bak
ln -s ~/dotfiles/gitignore ~/.gitignore

echo "Finished."
echo "You will need to install powerline-font yourself, we recommend DejaVuSansMono"
echo "https://github.com/Lokaltog/powerline-fonts/tree/master/DejaVuSansMono"

