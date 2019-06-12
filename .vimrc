set shiftwidth=4
set tabstop=4
set expandtab
set relativenumber
set number
set laststatus=2

let g:sneak#label = 1

filetype plugin indent on

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

"saving/loading
nmap <Space>w :w<CR>
nmap <Space>ee :e 
nmap <Space>et :tabe 
nmap <Space>q :q<CR>
