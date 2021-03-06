set nocompatible
filetype on                  
syntax on
filetype indent plugin on
set showcmd
set autoindent
set backspace=indent,eol,start
set shiftwidth=2
set softtabstop=2
set expandtab
set number
set relativenumber
set cursorline

" 开启24位色彩
if has("termguicolors")
    " fix bug for vim
    set t_8f=^[[38;2;%lu;%lu;%lum
    set t_8b=^[[48;2;%lu;%lu;%lum
    " enable true color
    set termguicolors
endif

au BufRead,BufNewFile *.ss set softtabstop=2

map <c-l> :w<CR>
map <c-q> :q<CR>
map <c-m> :ls<CR>
map <c-n> :bn<CR>
map <c-p> :bp<CR>
nnoremap <Leader>v :so %<CR>
imap <c-[> <c-c>

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/defx.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'morhetz/gruvbox'
Plug 'qpkorr/vim-bufkill'
Plug 'easymotion/vim-easymotion'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
call plug#end()

so ~/.config/nvim/defx.vim
so ~/.config/nvim/coc.vim
so ~/.config/nvim/lightline.vim

map <c-k> :BD<CR>
map [f <Plug>(easymotion-prefix)

set bg=light
let g:gruvbox_contrast_light='hard'
let g:gruvbox_contrast_dark='middle'
colorscheme gruvbox

