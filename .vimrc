set nocompatible
syntax on
filetype off
colorscheme jellybeans

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'klen/python-mode'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/nerdtree'

" plugins must be added before here
call vundle#end()

filetype plugin indent on
set noet ci pi sts=0 sw=4
set laststatus=2
set expandtab
set shiftwidth=2
set softtabstop=2
nmap <leader>k <C-U>
nmap <leader>j <C-F>
nmap <leader>m :!make <return>
nmap <leader>r :!make run <return>
map <leader>t :NERDTreeToggle<CR>
" Opening and closing braces
imap <C-F> {<CR>}<C-O>O

let g:pymode_trim_whitespaces = 1
let g:pymode_python= 'python3'
let g:pymode_rope_complete_on_dot = 0

set backspace=2
