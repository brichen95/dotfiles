" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Tabs
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

" Show (partial) command in status line
set showcmd
set wildmenu

" Show matching brackets
set showmatch

" Syntax highlighting
syntax on

" File stats on the lower right hand
set ruler

" Smart case/case insensitive matching
set ignorecase
set smartcase

" Indents
set autoindent
set copyindent

" Line numbers
set number

" 4 lines above and below screen
set scrolloff=4

" Enable mouse
set mouse=a

" Load filetype specific plugins
filetype plugin indent on

" Status bar
set laststatus=2

" tree view when looking at directories
let g:netrw_liststyle = 3

" ctags! look them up, they're magical
" taken off stackoverflow, this is supposed to look for a tags file
"   in current file/current dir/all the way up to $HOME
set tags=./tags,tags;$HOME

" Colors
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
