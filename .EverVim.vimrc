let mapleader=','
"Theme options
"let g:evervim_color_theme="Monokai"
"let g:evervim_airline_theme="wombat"
let g:evervim_light_background = 0
let g:evervim_smooth_scrolling = 1
let g:evervim_transparent_bg = 1

"let g:evervim_clear_search_highlight = 1

let g:evervim_disable_folding=1
set tags=tags
nnoremap c "_c
set nocompatible
filetype plugin on
syntax on
set encoding=utf-8
set number relativenumber

" Enable autocompletion:
set wildmode=longest,list,full

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>o :setlocal spell! spelllang=en_us<CR>

map <leader>n :NERDTreeToggle<CR>f

" Save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l
