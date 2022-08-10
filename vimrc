"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
"                       __   _ _ _ __ ___  _ __ ___                            "
"                       \ \ / / | '_ ` _ \| '__/ __|                           "
"                        \ V /| | | | | | | | | (__                            "
"                         \_/ |_|_| |_| |_|_|  \___|                           "
"                                                                              "
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"


set nocompatible

"=====================================================
"" Vundle settings
"=====================================================
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'               " let Vundle manage Vundle, required

    "-------------------=== Code/Project navigation ===-------------
    Plugin 'scrooloose/nerdtree'                " Project and file navigation
    Plugin 'majutsushi/tagbar'                  " Class/module browser

    "-------------------=== Other ===-------------------------------
    Plugin 'bling/vim-airline'                  " Lean & mean status/tabline for vim
    Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
    Plugin 'whatyouhide/vim-gotham'             " Gotham theme <3
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-surround'                 " Parentheses, brackets, quotes, XML tags, and more
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'edkolev/tmuxline.vim'
    "-------------------=== Snippets support ===--------------------
    "UltiSnips                " Snippets manager
    "Plugin 'honza/vim-snippets'                 " snippets repo

    "-------------------=== Languages support ===-------------------
    Plugin 'scrooloose/nerdcommenter'           " Comment something
    Plugin 'Valloric/YouCompleteMe'             " Autocomplete plugin

    "-------------------=== Syntax  ===-----------------------------
"    Plugin 'vim-syntastic/syntastic'            " Syntax checking plugin for Vim
    "-------------------=== Python  ===-----------------------------
    Plugin 'Vimjas/vim-python-pep8-indent'      " Check python indentation
"    Plugin 'klen/python-mode'                   " Python mode (docs, refactor, lint..)
    
    "-------------------=== Markdown, Documents  ===-----------------------------
    Plugin 'plasticboy/vim-markdown'
    Plugin 'junegunn/goyo.vim'
    Plugin 'dhruvasagar/vim-table-mode'


call vundle#end()                           " required
filetype on
filetype plugin on
filetype plugin indent on


"=====================================================
"" General settings
"=====================================================
syntax on                               " syntax highlight
set t_Co=256                                " set 256 colors
set number                                  " show line numbers

set tabstop=4                               " 4 whitespaces for tabs visual presentation
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code
set cursorline                              " shows line under the cursor's line
set showmatch                               " shows matching part of bracket pairs (), [], {}

set enc=utf-8	                            " utf-8 by default
"set nobackup 	                            " no backup files
"set nowritebackup                           " only in case you don't want a backup file while editing
set noswapfile 	                            " no swap files

set backspace=2                             " backspace removes all (indents, EOLs, start) What is start?
set clipboard=unnamed                       " use system clipboard
"set term=xterm-256color
set termguicolors
set mouse=a


"=====================================================
"" Tabs / Buffers settings
"=====================================================
set switchbuf=useopen
set laststatus=2
nmap <F9> :bprev<CR>
nmap <F10> :bnext<CR>



"=====================================================
"" Search settings
"=====================================================
set incsearch	                            " incremental search
set hlsearch	                            " highlight search results



"=====================================================
"" AirLine settings
"=====================================================
"let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1
let g:gotham_airline_emphasised_insert = 0
let g:bufferline_echo = 0

colorscheme gotham

autocmd FileType python setlocal colorcolumn=80
highlight ColorColumn ctermbg=235 guibg=#2c2d27


"=====================================================
"" TagBar settings
"=====================================================
let g:tagbar_autofocus=0
let g:tagbar_width=24
nmap <F8> :TagbarToggle<CR>
"autocmd BufEnter *.py :call tagbar#autoopen(0)
"autocmd BufWinLeave *.py :TagbarClose



"=====================================================
"" NERDTree settings
"=====================================================
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']     " Ignore files in NERDTree
let NERDTreeWinSize=25
let NERDTreeChDirMode=1
nmap <F1> :NERDTreeToggle<CR>
autocmd VimEnter * if !argc() | NERDTree | endif            " Load NERDTree only if vim is run without arguments


"=====================================================
"""" NERDCommentor settings
"=====================================================
let g:NERDSpaceDelims = 1               " Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1           " Use compact syntax for prettified multi-line comments
let g:NERDTrimTrailingWhitespace = 1




"=====================================================
"" Snippet settings
"=====================================================
"let g:snippets_dir='~/.vim/vim-snippets/snippets'


"=====================================================
" YouCompleteMe
"=====================================================
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_min_num_of_chars_for_completion=2 
let g:ycm_cache_omnifunc=0 
let g:ycm_seed_identifiers_with_syntax=1 

"let g:ycm_global_ycm_extra_conf='~/.vim/ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf=0



"=====================================================
"" Python settings (Syntax/Rope/Folding/Hilighting/)
"=====================================================
"let g:pymode = 1
"let g:pymode_trim_whitespaces = 1
"let g:pymode_folding=0      " code folding
"let g:pymode_indent=1       " pep8 indents


" syntax highlight
"let g:pymode_syntax=0
"let g:pymode_syntax_all=1


" syntastic
"let g:syntastic_check_on_wq = 0

"let g:syntastic_loc_list_height=2
"let g:syntastic_error_symbol='✗'
"let g:syntastic_style_error_symbol='✗'
"let g:syntastic_warning_symbol='⚠'
"let g:syntastic_style_warning_symbol='⚠'
"let g:syntastic_python_checkers=['flake8', 'python']


"=====================================================
"" Other
"=====================================================
autocmd BufRead scp://* :set bt=acwrite     " Remote setting

