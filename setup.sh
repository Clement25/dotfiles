#!/bin/bash

echo "Echo to home directory, and began installing"
cd 

# --------- Linux setup ----------
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    echo "Detected Linux system"
    echo "mv current .file to .file_old"
    
    FILE=.bashrc
    if [ -f "$FILE" ]; then
        mv .bashrc .bashrc_old
    fi
   
    FILE=.gitconfig
    if [ -f "$FILE" ]; then
        mv .gitconfig .gitconfig_old
    fi
    
    FILE=.vimrc
    if [ -f "$FILE" ]; then
        mv .vimrc .vimrc_old
    fi

    FILE=.ssh
    if [ -f "$FILE" ]; then
        mv .ssh .ssh_old
    fi

    read -p "Create symlink from Github/.dotfiles, y or n?" create
    if [ "$create" == "y" ]; then
        ln -s Github/.dotfiles/.bashrc .
        ln -s Github/.dotfiles/.gitconfig .
        ln -s Github/.dotfiles/.gitignore_global .
        ln -s Github/.dotfiles/.pdbrc .
        ln -s Github/.dotfiles/.pdbrc.py .
        ln -s Github/.dotfiles/.tmux.conf .
        ln -s Github/.dotfiles/.toprc .
        ln -s Github/.dotfiles/.vimrc .
        ln -s Github/.dotfiles/.ssh .
        ln -s Github/.dotfiles/.inputrc .
        ln -s Github/.dotfiles/.nvtop.sh .
        bind -f  ~/.inputrc
        echo "Sym Links created"
    else 
        echo "Skipped Creating Symlinks"
    fi


    read -p "sudo apt-get tmux and ctags and vim? y or n?" efficiency
    if [ "$efficiency" == "y" ]; then
        echo "Installing software for efficiency"
        sudo apt-get install tmux
        sudo apt-get install ctags
        sudo apt-get install vim
        # sudo apt-get install fzf
        # sudo apt-get install silversearcher-ag
        # sudo apt-get install vman
    else
        echo "Skipped Installing software for efficency"
    fi

    read -p "Sudo Install openssh-server? y or n?" ssh
    if [ "$ssh" == "y" ]; then
        sudo apt-get update
        sudo apt-get install openssh-server
        sudo ufw allow 22
        echo "SSH host have setup"
    else
        echo "Skipped Setting up ssh connection"
    fi


    read -p "Install miniconda3, y or n?" miniconda
    if [ "$miniconda" == "y" ]; then
        echo "Installing miniconda"
        echo "Choose not to write in bashrc"
        source ~/.bashrc
        wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
        bash Miniconda3-latest-Linux-x86_64.sh
        rm Miniconda3-latest-Linux-x86_64.sh
    else 
        echo "Skipped installing miniconda"
    fi

 
    read -p "Clone Vundle Vim package manager? y or n?" vim
    if [ "$vim" == "y" ]; then
        echo "Cloning Vim -- Vundle"
        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
        echo "Vundle Installed"
        echo "Run ':PluginInstall' to install vim plugins"
    else
        echo "Skipped cloning VimVundle"
    fi




    echo "Reload .bashrc file just created"
    source .bashrc

# ------- mac setup --------------
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Detected Darwin system"
    echo "Create symlink from Github/.dotfiles"
    ln -s Github/.dotfiles/.zshrc .
    ln -s Github/.dotfiles/.gitconfig .
    ln -s Github/.dotfiles/.gitignore_global .
    ln -s Github/.dotfiles/.pdbrc .
    ln -s Github/.dotfiles/.pdbrc.py .
    ln -s Github/.dotfiles/.tmux.conf .
    ln -s Github/.dotfiles/.toprc .
    ln -s Github/.dotfiles/.vimrc .
    ln -s Github/.dotfiles/.ssh .
    ln -s Github/.dotfiles/.inputrc .
    ln -s Github/.dotfiles/.nvtop.sh .
    ln -s Github/.dotfiles/.bash_profile .
    ln -s Github/.dotfiles/.profile .



    read -p "Install miniconda3, y or n?" miniconda
    if [ "$miniconda" == "y" ]; then
        echo "Installing miniconda"
        wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
        bash Miniconda3-latest-MacOSX-x86_64.sh
        rm Miniconda3-latest-MacOSX-x86_64.sh
    else 
        echo "Skipped installing miniconda"
    fi

    read -p "Clone Vundle Vim package manager? y or n?" vim
    if [ "$vim" == "y" ]; then
        echo "Cloning Vim -- Vundle"
        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    else
        echo "Skipped cloning VimVundle"
    fi
        
    echo ""
    echo ""
    echo "EXECUTE COMMAND BELOW AFTER SETUP FINISH"
    echo "source ~/.zshrc"


## ------- system not found -------------
else
    echo "Did not find MacOS or Linux system, skipped setup"
fi

echo "-------- All the setups have been done ! ---------"

