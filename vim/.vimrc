set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tell-k/vim-autopep8'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar' 
Plugin 'whatyouhide/vim-gotham'
Plugin 'tpope/vim-fugitive'
Plugin 'edkolev/tmuxline.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"=====================================================
"""" NERDTree settings
"=====================================================
nnoremap <silent> <F1> :NERDTree<CR>
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"=====================================================
"""" NERDCommentor settings
"=====================================================
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

"=====================================================
""" General settings
"=====================================================
syntax enable                               " syntax highlight
set background=dark
set backspace=2
set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code
set showmatch
set cursorline
set nu
set encoding=utf-8
set t_Co=256
" set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set mouse=a

"set termguicolors
colorscheme gotham
nmap <F8> :TagbarToggle<CR>



" "=====================================================
" """ AirLine settings
" "=====================================================
"let g:airline_theme='hybrid'
let g:gotham_airline_emphasised_insert = 0
" let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tmuxline#enabled = 1



