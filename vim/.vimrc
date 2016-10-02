runtime! archlinux.vim

set wm=0
set nu
set nowrap

" Tabs section
set tabstop=8 
set softtabstop=0 
set expandtab 
set shiftwidth=4 
set smarttab

" Show some invisible symbols
set list
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" New line tabs
set si

" C-style tabs
set cin

" Smart search
set incsearch

" Enable wildmenu
set wildmenu
set wildmode=list:longest,full

" Pleasant backspace
set backspace=2

" Mouse support in console
set mouse=a

"""""""""""""""""""""""""""""""""""""""""""
"Colors/fonts
"""""""""""""""""""""""""""""""""""""""""""

syntax enable
colorscheme wombat256mod

