" setup Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'pangloss/vim-javascript', { 'for': 'javascript' }
Plugin 'mxw/vim-jsx', { 'for': ['javascript', 'js', 'jsx'] }
Plugin 'elixir-lang/vim-elixir'
Plugin 'tpope/vim-obsession'
Plugin 'mileszs/ack.vim'

" back to regular vimrc 
call vundle#end()
filetype plugin indent on

" Keep all the temporary and backup files in one place
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set nobackup
set noswapfile

" Smart indentation
set autoindent
set smartindent

" Tab stops
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Split behavior
set splitbelow
set splitright
set winwidth=100

" Search
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

set wildmode=list:longest,full
set showcmd

" Decoration
set number
syntax on
set t_Co=256

set guifont=Monaco:h11
colorscheme jellybeans
set colorcolumn=80

" Motions
nnoremap <leader>q :cclose<CR>

" Set syntax for markdown filetypes
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" Project Management
let g:NERDTreeChDirMode=2
map <F9> :NERDTreeToggle<CR>

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$|bower_components|node_modules|tmp'

let g:ackprg = 'ag --nogroup --nocolor --column'
