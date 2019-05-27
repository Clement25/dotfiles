
## Source
https://www.youtube.com/watch?v=E-ZbrtoSuzw&list=LLlo2B8IAT9fXNgvsztJa5cQ&index=3&t=0s

## Operators
sample operators | meaning
--- | ---
c | change
d | delete
y | yank to register
~ | swap case
gu | make lowercase
gU | make uppercase(go uppercase)
! | filter to external program
< | shift left
`>` | shift right
= | indent

## Text objects
sample objects | meaning
--- | ---
aw | a word(sperated by punctuations and space)
iw | inner word(does not contain white space)
aW | a WORD(separated by white space)
iW | inner WORD
ap | a paragraph
ip | inner paragraph
ab | a bracket
ib | inner bracket


## Motions
sample motions | meaning
--- | ---
% | go to the other matching bracket
[count]+ | down to first non blank char of line with [count] below
[count]$ | end of the line with [count] below
[count]f/F{char} | to the next occurance of {char}
[count]t/T{char} | to the before next occurance of {char}
[count] h/j/k/l  | [count] lines left, down, up, or right
[count]]m | go to begining of next [count] method
[count]w/W | go a word to the right
[count]b/B | go a word to the left
[count]e/E | go to end of a word/Word right

## navigating
`H M L` move your cursor to high middle and low of the screen
`zt zz zb` move the screen to high middle low but cursor do not move
`Ctrl-U` move the cursor up a lot
`Ctrl-D` move the cursor down a lot
`Ctrl-B` full screen  up
`Ctrl-F` full screen down  

## editing
- `:e[dit] [++opt] [+cmd] {file}`
- `:fin[d][!] [++opt] [+cmd] {file}`
- `gf` for go to file `~/home/some-file`
- `Ctrl-^`


## searching
`gd` go to local declaration

## Marks
`m{a-zA-Z}` set a local mark, you can go the mark by `backtick{mark}`\
`:marks` show all the marks being used\
there are certain special marks, e.g. `\backtick.` to go to last edit

## Jumps
`Ctrl-O/Ctrl-I` for going back and forward
`g:/g,` go to last changes

## Other commands
`:set hls!` to turn off highlight search\
`:set shell=/usr/bin/zsh` set shell to zshell\
`:bo 15sp +te` create a terminal buffer
(this only works on [neovim](https://thoughtbot.com/blog/my-life-with-neovim))
OPEN WITH NO VIMRC `vi -u NONE`

OPEN WITH SPLIT THE WINDOW AT MIDDLE `vi -O <files-to-be-split>`

GIVE UP EVERYTHING EDITED: `:e!`


