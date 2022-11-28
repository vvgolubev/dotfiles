vim.cmd([[
call plug#begin('~/.config/nvim/plugged')

Plug '~/dev/arc/arcadia/junk/vvgolubev/vim-archer'
Plug 'arcticicestudio/nord-vim'
Plug 'cespare/vim-toml'
Plug 'easymotion/vim-easymotion'
Plug 'folke/trouble.nvim'
Plug 'itchyny/lightline.vim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lukas-reineke/lsp-format.nvim'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'neovim/nvim-lspconfig'
Plug 'numToStr/Comment.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'terryma/vim-smooth-scroll'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/a.vim'
Plug 'williamboman/nvim-lsp-installer'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'

call plug#end()
]])
