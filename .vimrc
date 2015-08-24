if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

set nocompatible
syntax on
filetype off
colorscheme jellybeans

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/neocomplete.vim'

" plugins must be added before here
call vundle#end()

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
set noet ci pi sts=0 sw=4
set laststatus=2
set expandtab
set shiftwidth=2
set softtabstop=2
nmap <leader>k <C-U>
nmap <leader>j <C-F>
nmap J 15j
nmap K 15k
nmap <leader>m :!make <return>
nmap <leader>r :!make run <return>
map <leader>t :NERDTreeToggle<CR>
" Opening and closing braces
imap <C-F> {<CR>}<C-O>O

function! s:insert_gates()
  let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
  execute "normal! i#ifndef " . gatename
  execute "normal! o#define " . gatename
  execute "normal! Go#endif /* " . gatename . " */"
  normal! kk
endfunction

autocmd BufNewFile *.{h,hpp} call <SID>insert_gates()
set backspace=2
