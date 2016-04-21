" setup Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
Plugin 'briancollins/vim-jst'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-dispatch'
Plugin 'janko-m/vim-test'
Plugin 'elixir-lang/vim-elixir'
Plugin 'tpope/vim-obsession'
Plugin 'heartsentwined/vim-emblem'


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

" Search
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

" Decoration
set number
syntax on
set t_Co=256

set guifont=Monaco:h11
colorscheme lightning
set colorcolumn=80
" highlight ColorColumn  ctermbg=255

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

" vim-test
nnoremap <leader>T :TestFile<CR>
nnoremap <leader>t :TestNearest<CR>
nnoremap <leader>l :TestLast<CR>
nnoremap <leader>a :TestSuite<CR>
let g:test#strategy = "dispatch"
let g:test#ruby#rspec#executable = "foreman run bundle exec rspec"
let g:test#ruby#cucumber#executable = "foreman run bundle exec cucumber"
let g:test#ruby#minitest#executable = "foreman run rake test"
