call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'joshdick/onedark.vim'
Plug 'kaicataldo/material.vim'
Plug 'folke/tokyonight.nvim'

" Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'davidhalter/jedi-vim'
Plug 'hoob3rt/lualine.nvim'
Plug 'machakann/vim-highlightedyank'
Plug 'sheerun/vim-polyglot'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'vim-scripts/matchit.zip'
" Plug 'vim-syntastic/syntastic'
" Plug 'airblade/vim-gitgutter'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'tpope/vim-surround'
Plug 'karb94/neoscroll.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Plug 'AndrewRadev/tagalong.vim'
Plug 'tpope/vim-eunuch'
Plug 'dstein64/nvim-scrollview'
Plug 'alvan/vim-closetag'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'akinsho/toggleterm.nvim'
Plug 'tversteeg/registers.nvim', { 'branch': 'main' }
Plug 'prettier/vim-prettier'
Plug 'mattn/emmet-vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'junegunn/fzf.vim'
" Plug 'luochen1990/rainbow'

call plug#end()
