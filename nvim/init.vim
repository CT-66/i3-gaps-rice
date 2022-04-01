source ~/.config/nvim/plugins.vim
source ~/.config/nvim/plugins-settings.vim
source ~/.config/nvim/keymaps.vim
source ~/.config/nvim/colors.vim

" -----

set nocompatible
set t_Co=256
set encoding=UTF-8
set nobackup
set nowritebackup
set noswapfile
set cmdheight=2
set updatetime=300
filetype plugin indent on
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set mouse=a
set noshowmode " already shown by statusline
set clipboard=unnamedplus
" show matching brackets/parenthesis
" set showmatch
" Don’t reset cursor to start of line when moving around.
set nostartofline
set wildmenu
set wildmode=longest:full,full
set lazyredraw
set hidden

" -----

set wrap
set linebreak

" -----
" go to previous/next line when pressing left/right arrow in beginning/end of line (only in insert mode)
" do not map h and l since it may break plugins and operations like `3h`, `d3l`, etc.
" it will not work in normal mode as left/right have already been mapped to `^` and `$` respectively
set whichwrap+=[,]

" -----

set number relativenumber
set visualbell
set t_vb=
set noerrorbells
set tm=500
set ttimeoutlen=50
set title
set confirm
set foldcolumn=1
set foldmethod=indent

set cursorline


function! RunPythonFile()
    :w
    :exec '!python' shellescape(@%, 1)
endfunction

function! MarkdownLevel()
    if getline(v:lnum) =~ '^# .*$'
        return ">1"
    endif
    if getline(v:lnum) =~ '^## .*$'
        return ">2"
    endif
    if getline(v:lnum) =~ '^### .*$'
        return ">3"
    endif
    if getline(v:lnum) =~ '^#### .*$'
        return ">4"
    endif
    if getline(v:lnum) =~ '^##### .*$'
        return ">5"
    endif
    if getline(v:lnum) =~ '^###### .*$'
        return ">6"
    endif
    return "="
endfunction

set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set ai
set si

set hlsearch
set ignorecase
set smartcase
set incsearch

syntax enable
syntax on

set shortmess=I
set shortmess+=a
set shortmess+=F
set shortmess+=c

set autoread
au FocusGained,BufEnter * checktime

set matchpairs+=<:>

set ruler

set backspace=indent,eol,start

set encoding=utf-8

" -----

" Disables automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Allow comments in json
autocmd FileType json set filetype=jsonc

" autocomplete closing tags for html
" autocmd FileType html inoremap <buffer> > ></<C-x><C-o><C-y><C-o>%<CR><C-o>O

" set default filetype for new file as `.md`
autocmd BufEnter * if &filetype == "" | setlocal ft=markdown | endif

" https://github.com/plasticboy/vim-markdown/issues/126
au filetype markdown set formatoptions+=ro
au filetype markdown set comments=b:*,b:-,b:+,b:1.,n:>

" open `:help` as a vertical split
" autocmd FileType help wincmd L

" open `:help` in a new tab
cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab help' : 'h'
cnoreabbrev <expr> help getcmdtype() == ":" && getcmdline() == 'help' ? 'tab help' : 'help'

" always open files in a new tab
autocmd VimEnter * tab all
autocmd BufAdd * exe 'tablast | tabe "' . expand( "<afile") .'"'

" enable relative line numbers in normal mode, and regular line numbers in insert mode
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

" markdown folding
au! BufEnter *.md setlocal foldexpr=MarkdownLevel()
au! BufEnter *.md setlocal foldmethod=expr

" format python file on save
" autocmd FileType python BufWritePre :Black
autocmd BufWritePre *.py Black

" -----

set laststatus=2

let g:vimsyn_embed = 'l' " get lua syntax highlighting in vimscript

" -----

let t:is_transparent = 0
function! ToggleTransparentBackground()
   if t:is_transparent == 0
       source ~/.config/nvim/colors.vim
       let t:is_transparent = 1
   else
       hi Normal guibg=NONE
       hi CursorLine guibg=#2e3440
       let t:is_transparent = 0
   endif
endfunction

" -----
