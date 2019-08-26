#!/bin/bash

echo "Echo to home directory, and began installing"
cd 

# --------- Linux setup ----------
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    echo "Detected Linux system"
    echo "mv current .file to .file_old"
    mv .bashrc .bashrc_old
    mv .gitconfig .gitconfig_old
    mv .vimrc .vimrc_old
    mv .ssh .ssh_old

    echo "create symlink from Github/dotfiles"
    ln -s Github/dotfiles/.bashrc .
    ln -s Github/dotfiles/.gitconfig .
    ln -s Github/dotfiles/.gitignore_global .
    ln -s Github/dotfiles/.pdbrc .
    ln -s Github/dotfiles/.pdbrc.py .
    ln -s Github/dotfiles/.tmux.conf .
    ln -s Github/dotfiles/.toprc .
    ln -s Github/dotfiles/.vimrc .
    ln -s Github/dotfiles/.ssh .
    ln -s Github/dotfiles/.inputrc .
    ln -s Github/dotfiles/.nvtop.sh .



    read -p "Install miniconda3, y or n?" miniconda
    if [ "$miniconda" == "y" ]; then
        echo "Installing miniconda"
        wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
        bash Miniconda3-latest-Linux-x86_64.sh
        rm Miniconda3-latest-Linux-x86_64.sh
    else 
        echo "Skipped installing miniconda"
    fi



    read -p "Set up jupyter without password? y or n?" jupyter
    if [ "$jupyter" == "y" ]; then
        echo "Setting up server jupyter notebook without password"
        conda install jupyter
        python jupyter_without_password_setup.py
    else
        echo "Skipped setting up jupyter without password"
    fi

    read -p "Clone Vundle Vim package manager? y or n?" vim
    if [ "$vim" == "y" ]; then
        echo "Cloning Vim -- Vundle"
        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    else
        echo "Skipped cloning VimVundle"
    fi


    read -p "apt-get tmux and ctags? y or n?" efficiency
    if [ "$efficiency" == "y" ]; then
        echo "Installing software for efficiency"
        sudo apt-get install tmux
        sudo apt-get install ctags
        # sudo apt-get install fzf
        # sudo apt-get install silversearcher-ag
        # sudo apt-get install vman
    else
        echo "Skipped Installing software for efficency"


    echo "reload .bashrc file just created"
    source ~/.bashrc
    fi

# ------- mac setup --------------
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Detected Darwin system"
    echo "Create symlink from Github/dotfiles"
    ln -s Github/dotfiles/.zshrc .
    ln -s Github/dotfiles/.gitconfig .
    ln -s Github/dotfiles/.gitignore_global .
    ln -s Github/dotfiles/.pdbrc .
    ln -s Github/dotfiles/.pdbrc.py .
    ln -s Github/dotfiles/.tmux.conf .
    ln -s Github/dotfiles/.toprc .
    ln -s Github/dotfiles/.vimrc .
    ln -s Github/dotfiles/.ssh .
    ln -s Github/dotfiles/.inputrc .
    ln -s Github/dotfiles/.nvtop.sh .



    read -p "Install miniconda3, y or n?" miniconda
    if [ "$miniconda" == "y" ]; then
        echo "Installing miniconda"
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

