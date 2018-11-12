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
Plugin 'pangloss/vim-javascript'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'scrooloose/nerdtree'
Plugin 'lifepillar/vim-mucomplete'
Plugin 'ryanoasis/vim-devicons'
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
highlight Normal ctermbg=234 ctermfg=255            " Changes background and text color

" Key maps
inoremap jj <ESC>
map <C-p> :w<CR>:!python3 %<CR>
map <space> :NERDTree <CR>
set backspace=2

" Other settings
set clipboard=unnamed
set noswapfile
set hlsearch

" Nerdtree
let NERDTreeShowHidden = 1
autocmd vimenter * NERDTree
set encoding=UTF-8

" Syntastic (Plugin)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Auto save (Plugin)
let g:auto_save = 1 
let g:auto_save_in_insert_mode = 0
let g:auto_save_silent=1

" Auto completion (Plugin)
set completeopt+=menuone
set completeopt+=noselect
set shortmess+=c
set belloff+=ctrlg
let g:mucomplete#enable_auto_at_startup = 1
" Auto completion 
:highlight Pmenu ctermbg=232
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
set ignorecase
