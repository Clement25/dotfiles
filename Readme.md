# how to keep track of all the configuration files


## using `rsync`
`rsync --exclude ".git/" . ~`

## using softlink
`ln -sv ~/Projects/dotfiles/.bash_profile ~` to link each files individually
