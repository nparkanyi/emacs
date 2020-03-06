call plug#begin('~/.vim/plugged')
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-surround'
call plug#end()

set shiftwidth=4
set tabstop=4
set expandtab
set relativenumber
set number
set laststatus=2

let g:sneak#label = 1

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

"show tabs
set list
set listchars=tab:!·,trail:·

"recursively search tags up directory tree
set tags=tags;/

nmap <F2> :tabp<CR>
nmap <F3> :tabn<CR>
nmap <F10> :!make; ./run.sh<CR>

"navigation by screenfuls
nmap <Space>j :exe 'nmap j <lt>C-d>'<CR>:exe 'nmap k <lt>C-u>'<CR><C-d>
nmap <Space>k :exe 'nmap j <lt>C-d>'<CR>:exe 'nmap k <lt>C-u>'<CR><C-u>
nmap <Space><Space> :noremap j j<CR>:noremap k k<CR>

"tags navigation
nmap <Space>td <C-]>
nmap <Space>tt <C-t>
nmap <Space>ts :sp<CR>:exe winnr('$') . "wincmd w"<CR><C-]>
nmap <Space>tv :vs<CR>:exe winnr('$') . "wincmd w"<CR><C-]>

"open vimrc
nmap <Space>vv :vs<CR>:exe winnr('$') . "wincmd w"<CR>:e ~/.vimrc<CR>
nmap <Space>vs :sp<CR>:exe winnr('$') . "wincmd w"<CR>:e ~/.vimrc<CR>

"open TODO
nmap <Space>Tv :vs<CR>:exe winnr('$') . "wincmd w"<CR>:e ~/TODO<CR>
nmap <Space>Ts :sp<CR>:exe winnr('$') . "wincmd w"<CR>:e ~/TODO<CR>

"saving/loading
nmap <Space>w :w<CR>
nmap <Space>ee :e 
nmap <Space>et :tabe 
nmap <Space>q :q<CR>

"ut_switch integration
noremap <Space>s :execute "mksession! " . $UTSESS <enter>

"cscope shortcuts
nmap <Space>ca :cs add .<CR>
nmap <Space>cg "zyiw:execute "cs find g " . @z<CR>
nmap <Space>csg :sp<CR>:exe winnr('$') . "wincmd w"<CR>"zyiw:execute "cs find g " . @z<CR>
nmap <Space>cvg :vs<CR>:exe winnr('$') . "wincmd w"<CR>"zyiw:execute "cs find g " . @z<CR>
nmap <Space>csc :sp<CR>:exe winnr('$') . "wincmd w"<CR>"zyiw:execute "cs find c " . @z<CR>
nmap <Space>cvc :vs<CR>:exe winnr('$') . "wincmd w"<CR>"zyiw:execute "cs find c " . @z<CR>
nmap <Space>css :sp<CR>:exe winnr('$') . "wincmd w"<CR>"zyiw:execute "cs find s " . @z<CR>
nmap <Space>cvs :vs<CR>:exe winnr('$') . "wincmd w"<CR>"zyiw:execute "cs find s " . @z<CR>
nmap <Space>cst :sp<CR>:exe winnr('$') . "wincmd w"<CR>"zyiw:execute "cs find t " . @z<CR>
nmap <Space>cvt :vs<CR>:exe winnr('$') . "wincmd w"<CR>"zyiw:execute "cs find t " . @z<CR>

nmap <Space>ct "zyiw:execute "cs find t " . @z<CR>
nmap <Space>cst :sp<CR>:exe winnr('$') . "wincmd w"<CR>"zyiw:execute "cs find t " . @z<CR>
nmap <Space>cvt :vs<CR>:exe winnr('$') . "wincmd w"<CR>"zyiw:execute "cs find t " . @z<CR>

"indentation modes
nmap <Space>it :set noexpandtab<CR>
nmap <Space>is :set expandtab<CR>

"insert mode completions
inoremap <C-f> <C-x><C-f>
inoremap <C-l> <C-x><C-o>

set t_Co=256
