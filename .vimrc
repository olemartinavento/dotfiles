"-------------------------------------------------
" General
"-------------------------------------------------

" Turn on vim features.
set nocompatible

" Always show line numbers.
set number

" Configure backspace to work properly.
set backspace=indent,eol,start

" Remember 500 lines of history.
set history=500

" Autoread files when changed outside of Vim.
set autoread

" Buffer becomes hidden when abandoned instead of unloaded.
set hidden

" Allow mouse navigation.
set mouse=a

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

" Disable error bells
set noerrorbells

" Horizontal splits below, vertical splits to the right.
set splitbelow
set splitright

" Let <C-a> and <C-x> work on decimal numbers.
set nrformats-=octal

" Display last line in window even if it does not fit.
set display+=lastline

" Show the filename in the window titlebar
set title

"-------------------------------------------------
" Key mappings
"-------------------------------------------------

" Map leader to ,
let mapleader=","

" Map JK to Escape key
:imap jk <Esc>

" Go to next line even if wrapped.
nnoremap j gj
nnoremap k gk

" Clear search highlighting
nnoremap <silent> <Leader>/ :nohlsearch<CR>

"-------------------------------------------------
" Swap file and backups
"-------------------------------------------------

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif

"-------------------------------------------------
" Indentation
"-------------------------------------------------

" Autoindent, use spaces instead of tabs, use 4 spaces.
set autoindent
set smartindent
set smarttab
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

"-------------------------------------------------
" Search
"-------------------------------------------------

" Ignore case when searching, use incremental search, and highlight
" search phrase.
set ignorecase
set incsearch
set hlsearch

"-------------------------------------------------
" Colors
"-------------------------------------------------

" Turn on syntax highlighting.
syntax on

" Highlight current line.
set cursorline

" Use the Solarized Dark theme
set background=dark
colorscheme solarized
let g:solarized_termtrans=1

"-------------------------------------------------
" Scrolling
"-------------------------------------------------

" Minimum lines above/below cursor.
set scrolloff=5

" Line length marker
set colorcolumn=80

" Wrap lines that are longer than the window.
set wrap

"-------------------------------------------------
" Command bar
"-------------------------------------------------

" Don’t reset cursor to start of line when moving around.
"set nostartofline

" Always show the status line and command bar
set cmdheight=2
set laststatus=2
set showcmd

" Always show current cursor position.
set ruler

" Turn on WiLd menu.
set wildmenu

" Show current mode.
set showmode

"-------------------------------------------------
" Vundle config
"-------------------------------------------------

" Required for Vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
" Required
Plugin 'gmarik/Vundle.vim'

"Plugin 'scrooloose/nerdcommenter'
"Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
"Plugin 'scrooloose/nerdtree'

" Better syntax
"Plugin 'cakebaker/scss-syntax.vim'
"Plugin 'pangloss/vim-javascript'

" Vim snimpate and dependencies
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
"Plugin 'honza/vim-snippets'

call vundle#end()

" Required for Vundle
filetype plugin indent on

"-------------------------------------------------
" Plugin config
"-------------------------------------------------

" CtrlP
let g:ctrlp_show_hidden=1
