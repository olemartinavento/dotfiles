" UI options
set number " Always show line numbers
set relativenumber " Use relative numbering
set scrolloff=5 " Minimum number of screen lines above or below the cursor
set cursorline " Hightlight the current line
set colorcolumn=80 " Highlight where the line should end
set splitbelow " New windows will be put below the current one
set splitright " New windows will be put to the right of the current one
set linebreak " Don't split words when breaking lines

" Status line
set cmdheight=2 " Number of screen lines to use for command line
set ruler " Show current cursor position

" Indentation
set expandtab " Use spaces instead of <Tab>
set tabstop=2 " Number of spaces that a <Tab> counts for
set softtabstop=2 " Number of spaces that a <Tab> counts for when editing
set shiftwidth=2 " Number of spaces to use for (auto)indent

" Indentation by file type
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType pug setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType php setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType vue setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType scss setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType lua setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Search options
set ignorecase " Ignore case when searching
set smartcase " Override ignorecase if search pattern contains upper case characters

" Clipboard options
set clipboard+=unnamed " Yank to clipboard

" Key mappings
" Use jk to exit insert mode
imap jk <Esc>
" Map leader to comma 
let mapleader=',' 
" Next and previous line includes wrapped lines
nnoremap j gj
nnoremap k gk
" Clear search highlight
nnoremap <silent> <leader>/ :nohlsearch<CR>

nmap <leader>r :checkt<CR>

" Plugins
call plug#begin()

" Essentials
Plug 'scrooloose/nerdtree' " Sidebar and file browser
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fuzzy finder
Plug 'junegunn/fzf.vim'

" Functionality
Plug 'tpope/vim-fugitive' " Vim integration
Plug 'tpope/vim-commentary' " Commenting
Plug 'tpope/vim-repeat' " Repeat plugin actions
Plug 'tpope/vim-surround' " Surround things
Plug 'jiangmiao/auto-pairs' " Auto close brackets and stuff

" Completion
" Plug 'SirVer/ultisnips' " Snippet engine
" Plug 'honza/vim-snippets' " Snippets
" Plug 'Shougo/deoplete.nvim' " Completion

" Language and syntax
Plug 'jwalton512/vim-blade' " Blade syntax
Plug 'mattn/emmet-vim' " HTML and CSS expansion
Plug 'posva/vim-vue' " Vue component syntax
Plug 'digitaltoad/vim-pug' " Pug syntax
Plug 'leafgarland/typescript-vim' " Typescript syntax

call plug#end()

" Colorscheme

" NERDTree
map <C-b> :NERDTreeToggle<CR>
let NERDTreeMapActivateNode='l'
let NERDTreeMapCloseDir='h'
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store', '\config.codekit', '\.sass-cache']

" FZF
nnoremap <c-p> :Files<cr>
nnoremap <silent> <C-p> :FZF -m<cr>
let g:fzf_action = {'ctrl-s': 'split', 'ctrl-v': 'vsplit'}

