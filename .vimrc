"_Q"" GENERAL SETTINGS
set nocompatible
set mouse=a
set t_Co=256
filetype plugin indent on
syntax on
set encoding=utf-8
set backupdir=~/vimfiles/tmp,.
set directory=~/vimfiles/tmp,.
set expandtab
set backspace=indent,eol,start
set ruler
set number relativenumber
set showcmd
set incsearch
set hlsearch
""" GENERAL SETTINGS END







set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'


" --------- for folding functions ------------- "
set foldcolumn=3
Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1

Plugin 'jeetsukumaran/vim-indentwise'
Plugin 'vim-scripts/indentpython.vim'
" Plugin 'Konfekt/FastFold'


" ----- Making Vim look good ------------------------------------------
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" ----- Vim as a programmer's text editor -----------------------------
" Plugin 'scrooloose/nerdtree'
" Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-syntastic/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'


" ----- Working with Git ----------------------------------------------
"  show git diff with ~/-/+
Plugin 'airblade/vim-gitgutter'
" git commit using Gcommit
" Plugin 'tpope/vim-fugitive'

" ----- Other text editing features -----------------------------------
" when you type an open bracket it will close for you
Plugin 'Raimondi/delimitMate'

" ----- man pages, tmux -----------------------------------------------
" Plugin 'jez/vim-superman'
Plugin 'christoomey/vim-tmux-navigator'

" ----- Syntax plugins ------------------------------------------------
" Plugin 'jez/vim-c0'
" Plugin 'jez/vim-ispc'
" Plugin 'kchmck/vim-coffee-script'

" ----- global search plugin -----------------------------------------
"  ------------ both of these need to install extra stuff
" Plugin 'junegunn/fzf'
" Plugin 'junegunn/fzf.vim'
" Plugin 'rking/ag.vim'

" ------- multiple cursor -------------------------
" Plugin 'terryma/vim-multiple-cursors'
"-------<C-n> for multiple cursor

" ---- Extras/Advanced plugins ----------------------------------------
" Highlight and strip trailing whitespace
"Plugin 'ntpeters/vim-better-whitespace'
" Easily surround chunks of text
"Plugin 'tpope/vim-surround'
" Align CSV files at commas, align Markdown tables, and more
"Plugin 'godlygeek/tabular'
" Automaticall insert the closing HTML tag
"Plugin 'HTML-AutoCloseTag'
" Make tmux look like vim-airline (read README for extra instructions)
"Plugin 'edkolev/tmuxline.vim'
" All the other syntax plugins I use
"Plugin 'ekalinin/Dockerfile.vim'
"Plugin 'digitaltoad/vim-jade'
"Plugin 'tpope/vim-liquid'
"Plugin 'cakebaker/scss-syntax.vim'
" ---- for testing -----
"Plugin 'janko-m/vim-test'
"nmap <silent> <leader>t :TestNearest<CR>
"nmap <silent> <leader>T :TestFile<CR>
"nmap <silent> <leader>a :TestSuite<CR>
"nmap <silent> <leader>l :TestLast<CR>
"nmap <silent> <leader>g :TestVisit<CR>
" --- install to list header file for c/cpp
" Plugin 'vim-scripts/a.vim'

" --------- tabnine -------------- "
Plugin 'zxqfl/tabnine-vim'

" --------- Kite -------------------"
"  https://help.kite.com/article/73-using-the-vim-plugin
"  https://kite.com/linux/
"  https://github.com/kiteco/vim-plugin & https://github.com/kiteco/vim-plugin/blob/master/DEVELOPMENT.md
"  https://help.kite.com/category/47-vim-integration
let g:kite_supported_languages = ['python']
let g:kite_auto_complete=1
let g:kite_snippets=1
let g:kite_tab_complete=1
" let g:kite_documentation_continual=1
set completeopt+=menuone   " show the popup menu even when there is only 1 match
set completeopt+=noinsert  " don't insert any text until user chooses a match
set completeopt-=longest   " don't insert the longest common text
set completeopt+=preview
autocmd CompleteDone * if !pumvisible() | pclose | endif
set belloff+=ctrlg 
nmap <silent> <buffer> K <Plug>(kite-docs)
nmap <F1> :set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P <CR>
imap <F2> <C-X><C-U>
let g:KiteShowPopularPatterns=1
nmap <F6> :KiteShowPopularPatterns <CR>
nmap <F7> :KiteHidePopularPatterns <CR>

nmap <F2> : execute "lvim /" . expand("<cword>") . "/gj **/*.py" <Bar> lw <CR>



call vundle#end()            " required


""" highlight redundant spaces in python
" let python_highlight_all=1
"
"------ python powerline_setup, useless since I already have airline ---------
"python3 import sys; sys.path.append("/home/<username>/anaconda3/lib/python3.7/site-packages")
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup

""" PYTHON RELATED SETTINGS END





au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=119 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.cpp set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=119 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.c set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=119 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.h set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=119 expandtab autoindent fileformat=unix
au BufNewFile,BufRead *.hpp set tabstop=2 softtabstop=2 shiftwidth=2 textwidth=119 expandtab autoindent fileformat=unix
setlocal foldmethod=expr

au BufNewFile,BufRead *.js,*.html,*.css: set tabstop=2 softtabstop=2 shiftwidth=2
set list
set listchars=tab:>-







" ----- PLUGIN-SPECIFIC SETTINGS --------------------------------------


" We need this for plugins like Syntastic and vim-gitgutter which put symbols
" in the sign column.
hi clear SignColumn


" ##### COLOR SCHEME SETTINGS
" Toggle this to "light" for light colorscheme
set background=dark
" Uncomment the next line if your terminal is not configured for solarized
"let g:solarized_termcolors=256
" Set the colorscheme
"colorscheme vim_dark
" Use the solarized theme for the Airline status bar
"let g:airline_theme='solarized'
" ----- bling/vim-airline settings -----
" Always show statusbar
set laststatus=2
" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"     https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" Finally, uncomment the next line
"let g:airline_powerline_fonts = 1
" Show PASTE if in paste mode
let g:airline_detect_paste=2
" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1
" ##### COLOR SCHEME SETTINGS END



" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 0


" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END


" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)


" ----- airblade/vim-gitgutter settings -----
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1


" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" better man page support
" noremap K :SuperMan <cword><CR>















" ############### MAP KEYS AND CUSTOMIZED FUNCTIONS ######################


""" ------ AUTOCOMPLETETION FOR FILE NAMES ----
set wildmenu
set wildmode=longest:full,full
""" ------ END --------------------------------


""" ------ PASTE MODE -------------------------
set pastetoggle=<F3>
""" ------ END --------------------------------

""" -------- LINE NUMBER ----------------------
nmap <F4> :set nu! <CR>
nmap <F5> :set rnu! <CR>
""" -------- END ------------------------------




let mapleader = '\'
map <Leader>ve :sp $HOME/.vimrc<CR>
map <Leader>vs :source $HOME/.vimrc<CR>
nmap <Leader>d Oimport ipdb; ipdb.set_trace()<Esc>

" ----- JISTR/VIWGM-NERDTREE-TABS -------------
" Open/close NERDTree Tabs with \t
nmap <silent> <leader>n :NERDTreeTabsToggle<CR>
""" --------- END ---------------------------

""" ------ SEARCH ----------------------------
" let g:ag_working_path_mode="r"
" nmap <leader>f :Files<space>
" nmap <leader>g :Ag<space>
""" ------- END ------------------------------

"---------- SPLIT NAVIGATIONS ----------------
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-]> g<C-]>
" --------- END ------------------------------


" ------- TERMINAL BUFFER -------------------
" tnoremap <Esc> <C-\><C-n>
" :bo 15sp | terminal  (bring up a terminal below
" :terminal (bring up new terminal)
" <C-d> close terminal
" ---------- END ----------------------------

" -------- SYNTASTIC CHECK ------------------
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>
" -------- END ------------------------------



""" ------ AUTOCOMPLETION FOR CODE ------------
function! Smart_TabComplete()
  let line = getline('.')                         " current line
  let substr = strpart(line, -1, col('.')+1)      " from the start of the current line to one character right of the cursor
  let substr = matchstr(substr, "[^ \t]*$")       " word till cursor
  if (strlen(substr)==0)                          " nothing to match on empty string
    return "\<tab>"
  endif
  let has_period = match(substr, '\.') != -1      " position of period, if any
  let has_slash = match(substr, '\/') != -1       " position of slash, if any
  if (!has_period && !has_slash)
    return "\<C-X>\<C-P>"                         " existing text matching
  elseif ( has_slash )
    return "\<C-X>\<C-F>"                         " file matching
  else
    return "\<C-X>\<C-O>"                         " plugin matching
  endif
endfunction

" inoremap <tab> <c-r>=Smart_TabComplete()<CR>
""" ------ END -------------------------------



" set vim do not break line number when too long
set formatoptions-=tc

" disable pylint in vscode
let g:pymode_lint_write = 0
" turn on/off pylint
" :PyLintToggle  

""""""""""""""""""""""""" CHEATSHEET CHEATSHEET CHEATSHEET CHEATSHEET
" % will go to the other closed bracket

" ------ FIND FILE IN DIRECTORY 
"  :Files <filename> for fuzz matching
"  <C-p> 	     for fuzz matching
"  :find <filename>  for find exact filename and open it

" ------ FIND A WORD IN EVERY FILE UNDER THAT DIRECTORY
"  :Ag <word_to_search>
"  ----- SEARCH WITH CASE INSENSITIVE
"  :/\c<word_to_search>
"  :set ignorecase
"  :set smartcase

"  ----- FOLDING
"  set foldmethod=indent
"  set foldlevel=1
"  set foldclose=all
"  ---- UNFOLDING
"  zo - opens folds
"  zc - closes fold
"  :set foldmethod=syntax (remove all folding)
"  zi                     (remove all folding)
"  zR                     (open all folding)
"  ZM                     (close all folding)
"
"
"  --- AUTOCOMPLETION
"  <C-E> for give up editing
"  <C-Y> for choosing a complete
"  <C-n> for next option
"  
"  ---- REPLACE WORDS GLOBALLY
"  :%s/foo/bar/g
"
"  --- CANCEL HIGHLIGHT
"  :noh
"
"  --- FIND LOCAL FILE FUNCTION DEFINITION
"  gd
"
