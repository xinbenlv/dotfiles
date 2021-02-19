#!/bin/bash

DATE=$(date +"%Y%m%d%H%M%S")
DOTFILES_DIR=~/dotfiles
BACKUP_DIR=$DOTFILES_DIR.$DATE.bak
echo "Execution at '$DATE'"
# TODO move backup and link process to a sh function
echo "Start installing dotfiles"


if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform
    # Mac OS X
    
    ## install brew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    brew remove vim
    brew cleanup
    brew install macvim

    brew install git
    brew install zsh
    brew install tmux

    # brew install ruby
    # brew install rbenv
    # brew install nvm
    brew install node
    brew install yarn
    brew install nvm
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Do something under GNU/Linux platform
    # TODO install git
    echo "We haven't test the linux version"
    sudo apt-get install git
    sudo apt-get install zsh
    sudo apt-get install tmux
    sudo apt-get install node,nvm,yarn
    # sudo apt-get install ruby,rbenv
    # install python-vim
    # https://gist.github.com/odiumediae/3b22d09b62e9acb7788baf6fdbb77cf8 and do check the python3.5 version to match with your version

fi


echo "Assuming git, zsh, oh-my-zsh, tmux, tmuxinator, vim(compiled with python3) installed"

command -v git
command -v zsh
command -v tmux
# command -v ruby
command -v node
command -v nvm
# TODO add check of these points

nvm install node
nvm alias default stable

if [ ! -e $DOTFILES_DIR ]; then
  echo "Git cloning from Github"
  git clone https://github.com/xinbenlv/dotfiles.git $DOTFILES_DIR
else 
  echo "Already have $DOTFILES_DIR cloned"
fi

echo "Backing up old files to $BACKUP_DIR"

mkdir $BACKUP_DIR

echo "Set up zshrc"
mv ~/.zshrc $BACKUP_DIR
ln -s $DOTFILES_DIR/zshrc ~/.zshrc

echo "Set up vim"
mv ~/.vimrc $BACKUP_DIR
ln -s $DOTFILES_DIR/vimrc ~/.vimrc

echo "Set up tmux"
mv ~/.tmux.conf $BACKUP_DIR
ln -s $DOTFILES_DIR/tmux.conf ~/.tmux.conf

echo "Set up git"
mv ~/.gitconfig $BACKUP_DIR
ln -s $DOTFILES_DIR/gitconfig ~/.gitconfig
mv ~/.gitignore $BACKUP_DIR
ln -s $DOTFILES_DIR/gitignore ~/.gitignore


echo "Finished."
echo "You will need to install powerline-font yourself, we recommend DejaVuSansMono"
echo "https://github.com/Lokaltog/powerline-fonts/tree/master/DejaVuSansMono"

