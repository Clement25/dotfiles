echo "echo to home directory, and began installing"
cd 

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

echo "install miniconda"
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
rm Miniconda3-latest-Linux-x86_64.sh

echo "set up server jupyter notebook without password"
conda install jupyter
python jupyter_without_password_setup.py

echo "install vim bundle manager -- Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "install software for efficiency"
sudo apt-get install tmux
sudo apt-get install ctags
# sudo apt-get install fzf
# sudo apt-get install silversearcher-ag
# sudo apt-get install vman

echo "reload .bashrc file just created"
source ~/.bashrc

echo "all the setups have been done"

