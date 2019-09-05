# how to keep track of all the configuration files

put all of your configuration file in dotfiles repo

## To setup:

1) Setup environment
```bash
cd
mkdir Github && cd Github
git clone https://github.com/Emrys-Hong/dotfiles .dotfiles
cd .dotfiles && bash setup.sh
```


2) Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/)
```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
``

3) Setup ubuntu
For nvidia and docker one command installation:
https://getcuda.ml/

4) To install nvtop for better nvidia-smi:
https://github.com/Syllo/nvtop

5) Unlink files:
To unlink all the .files from ~/:
```
bash unlink.sh
```


## Cheetsheet
`git alias` for git alias

`alias` for bashrc alias