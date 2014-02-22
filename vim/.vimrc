imap ;a <Esc>
nmap ,w :w<Enter>
nmap ,d :x<Enter>
nmap ,q :q!<Enter>
nmap Q {gq}

" searching
set incsearch
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
" perl/python compatible searching
nnoremap / /\v
vnoremap / /\v
" unhighlight search results after done
nnoremap ,<space> :noh<cr>

" set tab stop to 2, reindent level to 2, and tab to put in spaces
set softtabstop=4 shiftwidth=4 expandtab
set textwidth=72

" show current row and col at bottom of screen
set ruler

set nocompatible " get out of vi compatible mode
syntax enable
set background=light

set showmatch " show matching brackets
set nowrap
set showcmd " show incomplete commands
set encoding=utf-8
filetype plugin indent on " load filetype plugins + indentation
set backspace=indent,eol,start  " backspace through everything in insert mode

set ttyfast
set showmode
set scrolloff=3
