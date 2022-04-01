let mapleader = " "

" save
nnoremap <C-s> :w<cr>
nmap <leader><leader> :w<cr>
" comments
nmap <C-_> gcc
xmap <C-_> gc
nmap \ gcc
xmap \ gc
nmap <leader>/ gcc
xmap <leader>/ gc


" select all
nmap <leader>a ggVG
nmap <C-a> ggVG

" run code (python)
nmap <leader>b :call RunPythonFile()<cr>
nmap <C-b> :call RunPythonFile()<cr>

" reload vimrc
nmap <leader>v :source ~/.config/nvim/init.vim<cr>

" since ctrl+a is binded to select all, this binds alt+a to increment numbers
nnoremap <A-a> <C-a>

" redo
nnoremap U <C-r>

" do not yank while cut/delete/change/substitute
nnoremap d "_d
vnoremap d "_d
nnoremap D "_D
nnoremap x "_x
nnoremap X "_X
nnoremap c "_c
nnoremap C "_C
nnoremap s "_s
nnoremap S "_S

" yank till end of line
nnoremap Y y$

" nmap j gj
" nmap k gk
" up/down in same line when a line is wrapped
nmap j gj
nmap k gk

" nmap <Up> gk
" nmap <Down> gj
noremap <up> <nop>
noremap <down> <nop>

" paste in next line
nmap pn <esc>o<esc>p

" left/right to go to beginnning/end of line
nnoremap <Left> ^
nnoremap <Right> $

" delete till beginnning/end of line
nmap d<Left> d^
nmap d<Right> d$

" yank till beginnning/end of line
nmap y<Left> y^
nmap y<Right> y$

" change till beginnning/end of line
nmap c<Left> c^
nmap c<Right> c$

vnoremap <left> ^
vnoremap <right> $

" imap <left> <C-o>^
" imap <right> <C-o>$

" disable  ex mode
nnoremap Q <Nop>

nmap ; :

" Stay in visual mode when indenting
vnoremap < <gv
vnoremap > >gv

" clear highlighted results after a search
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" disable help (f1)
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" " disable trying to find man page entry (K)
" nnoremap K <Nop>
" xnoremap K <Nop>

" center cursor on movements like `j`, `k`, `G` and `n`, `N`
" set scrolloff=999
" nnoremap j jzz
" nnoremap k kzz

" nnoremap <Down> jzz
" nnoremap <Up> kzz

" nnoremap G Gzz

" center the cursor when performing common actions (ctrl+d, ctrl+u, etc)
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

nnoremap <C-f> <C-f>zz
nnoremap <C-b> <C-b>zz

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" nnoremap { {zz
" nnoremap } }zz

" splits
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Open new split panes to right and bottom
set splitbelow
set splitright

" resize splits
nnoremap <S-left> :vertical resize -5<cr>
nnoremap <S-right> :vertical resize +5<cr>
nnoremap <S-up> :resize +5<cr>
nnoremap <S-down> :resize -5<cr>
nnoremap = <C-w>=

" paste in command mode
cnoremap <C-v> <C-r>+

" paste in insert mode
imap <C-v> <C-r>+

" hjkl like movements in insert mode
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>

" imap <up> <nop>
" imap <down> <nop>

" imap jk <esc>
" imap jj <esc>


" macros
nnoremap Q qw
nnoremap K @w

" tab bindings
nnoremap <C-n> :tabnew<CR>
nnoremap <C-tab> :tabnext<CR>
nnoremap <C-S-tab> :tabprevious<CR>

" ctrl+left/right arrow to move to previous/next word
" ctrl+shift+left/right arrow to select previous/next word
nnoremap <C-Left> b
nnoremap <C-Right> w
vnoremap <C-S-Left> b
vnoremap <C-S-Right> w
nnoremap <C-S-Left> gh<C-O>b
nnoremap <C-S-Right> gh<C-O>w
inoremap <C-S-Left> <C-\><C-O>gh<C-O>b
inoremap <C-S-Right> <C-\><C-O>gh<C-O>w
