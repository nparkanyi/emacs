set shiftwidth=4
set tabstop=4
set expandtab
set relativenumber
set number

colorscheme jellybeans

let g:sneak#label = 1

filetype plugin indent on

nmap <F2> :tabp<CR>
nmap <F3> :tabn<CR>
nmap <F10> :!make; ./run.sh<CR>

nmap <Space>d <C-]>
nmap <Space>t <C-t>

