runtime! archlinux.vim

set wm=0
set nu
set nowrap
set smarttab

" Tabs section
set shiftwidth=4
set tabstop=4

" New line tabs
set si

" C-style tabs
set cin

" Highlight search
set hlsearch

" Smart search
set incsearch

" Enable wildmenu
set wildmenu
set wildmode=list:longest,full

" Pleasant backspace
set backspace=2

" 256 colors in term
"set t_Co=256

"""""""""""""""""""""""""""""""""""""""""""
"Colors/fonts
"""""""""""""""""""""""""""""""""""""""""""

syntax enable
colorscheme material-theme 


" Mouse support in console
set mouse=a
