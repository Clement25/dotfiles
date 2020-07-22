#!/bin/bash

echo "Echo to home directory, and began linking"
cd 

# --------- Linux setup ----------
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    echo "Detected Linux system"
    
    read -p "remove old symlinks, y or n?" remove
    if [ "$remove" == "y" ]; then
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

        FILE=.profile
        if [ -f "$FILE" ]; then
                rm .profile
        fi
    else 
        echo "Skipped mv .file to .file_old"
    fi

    read -p "Create symlink from Github/.dotfiles, y or n?" create
    if [ "$create" == "y" ]; then
        ln -s Github/.dotfiles/.bashrc .
        ln -s Github/.dotfiles/.gitconfig .
        ln -s Github/.dotfiles/.pdbrc .
        ln -s Github/.dotfiles/.pdbrc.py .
        ln -s Github/.dotfiles/.tmux.conf .
        ln -s Github/.dotfiles/.toprc .
        ln -s Github/.dotfiles/.vimrc .
        ln -s Github/.dotfiles/.ssh .
        ln -s Github/.dotfiles/.inputrc .
        ln -s Github/.dotfiles/.nvtop.sh .
        ln -s Github/.dotfiles/.profile
        touch .localrc
        ln -s ~/Github/.dotfiles/nvim ~/.config
        bind -f  ~/.inputrc
        echo "Sym Links created"
    else 
        echo "Skipped Creating Symlinks"
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

   
    echo ""
    echo ""
    echo "EXECUTE COMMAND BELOW AFTER SETUP FINISH"
    echo "source ~/.zshrc"


## ------- system not found -------------
else
    echo "Did not find MacOS or Linux system, skipped setup"
fi

echo "-------- All the setups have been done ! ---------"

