"Boiler plate
set nocompatible
filetype off            
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-python/python-syntax'
call vundle#end()           
filetype plugin indent on 


" This is my conf
syntax on
set number
colorscheme onedark
let g:python_highlight_all = 1

" Tabs and spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Color
let &t_Co=256
highlight Normal ctermbg=234 ctermfg=253            " Changes background and text color

" Maps
inoremap jj <ESC>
map <C-p> :w<CR>:!python3 %<CR>
map <space> :Explore <CR>

" Other settings
set clipboard=unnamed
set noswapfile

" File explorer
let g:netrw_banner = 0
