cd 
ln -s Github/dotfiles/.bashrc .
ln -s Github/dotfiles/.gitconfig .
ln -s Github/dotfiles/.gitignore_global .
ln -s Github/dotfiles/.pdbrc .
ln -s Github/dotfiles/.pdbrc.py .
ln -s Github/dotfiles/.tmux.conf .
ln -s Github/dotfiles/.toprc .
ln -s Github/dotfiles/.vimrc .
ln -s Github/dotfiles/.ssh .

# install miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
rm Miniconda3-latest-Linux-x86_64.sh

# jupyter notebook without password
conda install jupyter
python jupyter_without_password_setup.py

# vim bundle manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#
source ~/.bashrc

# install software for efficiency
sudo apt-get install tmux
sudo apt-get install ctags
