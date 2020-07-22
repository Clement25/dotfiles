nvim:
	echo "Installing software for efficiency"
	curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
	chmod u+x nvim.appimage

vundle:
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

conda:
	wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
	bash Miniconda3-latest-Linux-x86_64.sh
	rm Miniconda3-latest-Linux-x86_64.sh


autojump:
	git clone git://github.com/wting/autojump.git
	cd autojump
	./install.py
     

# commands requrie sudo    
update:
	sudo apt-get -y update

upgrade:
	sudo apt-get -y upgrade

vim:
	sudo apt-get -y install vim

tmux:
	sudo apt-get -y install tmux
    
ctags:
	sudo apt-get -y install ctags


openssh:
	sudo apt-get install -y openssh-server
	sudo ufw allow 22


curl:
	sudo apt install -y curl

wget:
	sudo apt install -y wget

bash_complete:
	sudo apt install -y bash-completion


