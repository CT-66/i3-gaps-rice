lua require('plugins-settings')

" -----
" telescope.nvim
nnoremap <C-p> <cmd>Telescope find_files<cr>

" -----
" highlighted yank
let g:highlightedyank_highlight_duration = 100

" -----
" jedi
" let g:jedi#use_tabs_not_buffers = 1
let g:rainbow_active = 1
" let g:jedi#completions_command = "<C-Space>"
" let g:jedi#environment_path = "python.exe"
" let g:airline_theme='one'
let g:onedark_termcolors=256

let g:tokyonight_italic_comments=0
let g:tokyonight_italic_keywords=0

" -----
" better whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:better_whitespace_guicolor='darkred'
let g:strip_whitespace_confirm=0
let g:strip_whitelines_at_eof=1
let g:better_whitespace_filetypes_blacklist=[]

" -----
" coc.nvim
let g:coc_global_extensions = ['coc-pyright', 'coc-pairs', 'coc-json', 'coc-sh', 'coc-tsserver', 'coc-html', 'coc-snippets']

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? coc#_select_confirm() :
"       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" let g:coc_snippet_next = '<tab>'

" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" nnoremap <silent> K :call <SID>show_documentation()<CR>

" function! s:show_documentation()
"     if (index(['vim','help'], &filetype) >= 0)
"         execute 'h '.expand('<cword>')
"     else
"         call CocAction('doHover')
"     endif
" endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

let b:coc_pairs_disabled = ['<']

" -----
" hexokinase
let g:Hexokinase_highlighters = [ 'virtual' ]

let g:Hexokinase_optInPatterns = [
\     'full_hex',
\     'triple_hex',
\     'rgb',
\     'rgba',
\     'hsl',
\     'hsla',
\     'colour_names'
\ ]

" -----
" vim-closetag

" -----

" registers.nvim
let g:registers_return_symbol = '⏎'
let g:registers_tab_symbol = '·'
let g:registers_space_symbol = "."
let g:registers_delay = 0
let g:registers_register_key_sleep = 0
let g:registers_show_empty_registers = 1
let g:registers_trim_whitespace = 1
let g:registers_hide_only_whitespace = 1 "0 by default, don't show registers filled exclusively with whitespace
let g:registers_window_border = "rounded"
" let g:registers_window_min_height = 10 "3 by default, minimum height of the window when there is the cursor at the bottom
" let g:registers_window_max_width = 20 "100 by default, maximum width of the window
" let g:registers_normal_mode = 0 "1 by default, open the window in normal mode
" let g:registers_paste_in_normal_mode = 1 "0 by default, automatically perform a paste action when selecting a register in normal mode
" let g:registers_visual_mode = 0 "1 by default, open the window in visual mode
" let g:registers_insert_mode = 0 "1 by default, open the window in insert mode
" let g:registers_show = "*+\"" "'*+\"-/_=#%.0123456789abcdefghijklmnopqrstuvwxyz' by default, which registers to show and in what order

" -----
" prettier
let g:prettier#config#tab_width = '4'
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#parser = ''
let g:prettier#config#config_precedence = 'file-override'
let g:prettier#config#prose_wrap = 'preserve'
let g:prettier#config#html_whitespace_sensitivity = 'css'
let g:prettier#config#require_pragma = 'false'
let g:prettier#config#end_of_line = get(g:, 'prettier#config#end_of_line', 'lf')
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#exec_cmd_async = 1

" -----
" emmet
let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key='<C-Z>'
autocmd FileType html,css EmmetInstall

" -----
" ranger.vim
let g:ranger_map_keys = 0
nnoremap <A-f> :RangerCurrentDirectoryNewTab<CR>
let g:ranger_replace_netrw = 1

" -----
" rainbow
 let g:rainbow_active = 1
