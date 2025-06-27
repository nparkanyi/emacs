call plug#begin('~/.vim/plugged')
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-surround'
call plug#end()

set shiftwidth=4
set tabstop=4
" TODO per-project dir
set expandtab
set relativenumber
set number
set laststatus=2

let g:sneak#label = 1

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

"show tabs
"TODO per-project dir
set list
set listchars=tab:!·,trail:·

"recursively search tags up directory tree
set tags=tags;/

nmap <F2> :tabp<CR>
nmap <F3> :tabn<CR>
nmap <F10> :!make; ./run.sh<CR>

"navigation by screenfuls
function DisableScreenfulMappings()
    noremap j j
    noremap k k
    noremap <Space> <Space>
    noremap <Space>j :call EnableScreenfulMappings()<CR><C-d>
    noremap <Space>k :call EnableScreenfulMappings()<CR><C-u>
    set timeoutlen=1000
endfunction
function EnableScreenfulMappings()
    " For using <Space> to quit this mode. All multi-key mappings
    " are essentially disabled.
    set timeoutlen=0
    noremap j <C-D>
    noremap k <C-u>
    noremap <Esc> :call DisableScreenfulMappings()<CR>
    noremap <Space> :call DisableScreenfulMappings()<CR>
endfunction
call DisableScreenfulMappings()

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

"Build proc+libc
nmap <Space>bpa :!build_proc aarch64<CR>
nmap <Space>bca :!build_libc aarch64<CR>
nmap <Space>bpx :!build_proc x86_64<CR>
nmap <Space>bcx :!build_libc x86_64<CR>
nmap <Space>bipa :!build_proc -i aarch64<CR>
nmap <Space>bica :!build_libc -i aarch64<CR>
nmap <Space>bipx :!build_proc -i x86_64<CR>
nmap <Space>bicx :!build_libc -i x86_64<CR>


"Treat .ci files as C source
autocmd BufNewFile,BufRead *.ci set filetype=c

set t_Co=256
