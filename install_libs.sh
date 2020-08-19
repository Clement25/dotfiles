#!/bin/bash


echo -e "-------- Begin to install common libraries for working --------- \n\n"

       
# --------- Linux setup ----------
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    echo "Detected Linux system"
    
    read -p "apt-get neovim? y or n?" neovim
    if [ "$neovim" == "y" ]; then
        echo "Installing software for efficiency"
        # apt-get install neovim
        
        # the following source from https://github.com/neovim/neovim/wiki/Installing-Neovim#appimage-universal-linux-package & https://www.reddit.com/r/neovim/comments/f9661m/how_do_i_install_the_latest_version_of_neovim_on/
        # neovimrc is loaded from ~/.config/nvim (http://vimcasts.org/episodes/meet-neovim/)
        # installing vim with root access: https://askubuntu.com/questions/339/how-can-i-install-a-package-without-root-access
        curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
        chmod u+x nvim.appimage
    else
        echo "Skipped Installing software for efficency"
    fi


    read -p "apt-get vim? y or n? [need sudo]" vim
    if [ "$vim" == "y" ]; then
        echo "Installing software for efficiency"
        apt-get install vim
    else
        echo "Skipped Installing software for efficency"
    fi

 
    read -p "Clone Vundle Vim package manager? y or n?" vundle
    if [ "$vundle" == "y" ]; then
        echo "Cloning Vim -- Vundle"
        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
        echo "Vundle Installed"
        echo "Run ':PluginInstall' to install vim plugins"
    else
        echo "Skipped cloning VimVundle"
    fi

   
    read -p "apt-get tmux? y or n? [need sudo]" tmux
    if [ "$tmux" == "y" ]; then
        echo "Installing software for efficiency"
        apt-get install tmux
        # apt-get install fzf
        # apt-get install silversearcher-ag
        # apt-get install vman
    else
        echo "Skipped Installing software for efficency"
    fi
    
    read -p "apt-get ctags? y or n? [need sudo]" ctags
    if [ "$ctags" == "y" ]; then
        echo "Installing software for efficiency"
        apt-get install ctags
    else
        echo "Skipped Installing software for efficency"
    fi

    read -p "Sudo Install openssh-server? y or n? [need suo]" ssh
    if [ "$ssh" == "y" ]; then
        apt-get update
        apt-get install openssh-server
        ufw allow 22
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

    read -p "Install autojump, y or n?" autojump
    if [ "$autojump" == "y" ]; then
        git clone git://github.com/wting/autojump.git
        cd autojump
        ./install.py
    else 
        echo "Skipped Installing autojump"
    fi
     
    
    read -p "apt-get bash autocomplete? y or n? [need sudo]" autocomplete
    if [ "$autocomplete" == "y" ]; then 
            echo "apt install bash-completion"
            apt install bash-completion
    else
            echo "Skipped Installing software for efficiency"
    fi





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

echo "-------- All libraries are installed ! ---------"

