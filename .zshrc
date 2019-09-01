# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/emrys/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# adding for multiple colors by Emrys
export TERM="xterm-256color"

# added by Anaconda3 5.2.0 installer
export PATH="/Users/emrys/anaconda3/bin:$PATH"

# Add Visual Studio Code(code) by Emrys
export PATH="$PATH:/Users/emrys/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# path for JAVA_HOME by Emrys
export JAVA_HOME=$(/usr/libexec/java_home)

# added for instance(exclusive-image-kaggle) in google cloud by Emrys
alias "googlecloud"="ssh -i ./.ssh/my-ssh-key hongpengfei_emrys@35.236.162.13"

# added path for python file path
export FLASK_APP=application.py

# added for node
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

# installs the nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# vman page for vim superman
export PATH="$PATH:$HOME/.vim/bundle/vim-superman/bin"
complete -o default -o nospace -F _man vman
# you can use vman for better man page

# daily commands
alias '..'='cd ..'
alias '...'='cd ../..'
alias '....'='cd ../../..'
alias 'cl'='clear'
alias 'brc'='source ~/.bashrc'
alias 'zrc'='source ~/.zshrc'
alias 'ci'='conda install'
alias 'ca'='conda activate'

# shortcut for tmux
alias 'new'='tmux new-session -s '
alias 'tl'='tmux list-sessions'
alias 'switch'='tmux switch -t'
alias 'ta'='tmux a'

# shortcut for screen
alias 'sl'='screen -ls'
alias 'sr'='screen -r '

# shortcut for tensorboard ssh connection
# tb <directory>
alias tb='tensorboard --port=6007 --logdir' # run locally
alias tb3='ssh -N -L localhost:6006:localhost:6007 pengfei@192.168.32.31'
alias tb5='ssh -N -L localhost:6006:localhost:6007 pengfei@192.168.32.32'

# shortcut for code server ssh connection
alias 'code'='~/code-server/code-server'
alias 'code0'='ssh -N -L localhost:8080:localhost:8080 pengfei@172.17.240.117'
alias 'code3'='ssh -N -L localhost:8080:localhost:8080 pengfei@192.168.32.31'
alias 'code4'='ssh -N -L localhost:8080:localhost:8080 pengfei@172.17.240.228'
alias 'code5'='ssh -N -L localhost:8080:localhost:8080 pengfei@192.168.32.32'

# for server jupyter notebook connection
alias 'notebook'='jupyter notebook --no-browser --port=8889' # run locally
alias 'notebook0'='ssh -N -L localhost:8888:localhost:8889 pengfei@172.17.240.117'
alias 'notebook3'='ssh -N -L localhost:8888:localhost:8889 pengfei@192.168.32.31'
alias 'notebook5'='ssh -N -L localhost:8888:localhost:8889 pengfei@192.168.32.32'

# ssh connection
alias 'hong-18'='ssh emrys@10.12.218.175'
alias 'server0'='ssh pengfei@172.17.240.117'
alias 'server3'='ssh pengfei@192.168.32.31'
alias 'server4'='ssh pengfei@172.17.240.228'
alias 'server5'='ssh pengfei@192.168.32.32'
