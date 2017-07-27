set nocompatible
syntax on
filetype off

colorscheme jellybeans

set rtp+=$HOME/vimfiles/bundle/Vundle.vim
call vundle#begin('$USERPROFILE/vimfiles/bundle/')

Plugin 'gmarik/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'lervag/vimtex'

" plugins must be added before here
call vundle#end()

let g:airline_theme = 'jellybeans'

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
set noet ci pi sts=0 sw=4
set laststatus=2
set expandtab
set shiftwidth=4
set softtabstop=4
nmap <leader>k <C-U>
nmap <leader>j <C-F>
nmap J 15j
nmap K 15k
nmap <leader>m :!make <return>
nmap <leader>r :!make run <return>
map <leader>t :NERDTreeToggle<CR>
nmap <leader>v :call VimRC()<return>
map <F2> :!./run.sh<CR>
" Opening and closing braces
imap <C-F> {<CR>}<C-O>O

function! s:insert_gates()
  let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
  execute "normal! i#ifndef " . gatename
  execute "normal! o#define " . gatename
  execute "normal! Go#endif /* " . gatename . " */"
  normal! kk
endfunction

function! VimRC()
    split
    o C:\Users\nick\_vimrc
endfunction

autocmd BufNewFile *.{h,hpp} call <SID>insert_gates()
set backspace=2

if has('gui_running')
  set guifont=Consolas:h10
  set guioptions-=T
  set guioptions-=m
endif

let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'

let g:ycm_path_to_python_interpreter = 'C:\Users\nick\AppData\Local\Programs\Python\Python35\python.exe'

set encoding=utf-8
