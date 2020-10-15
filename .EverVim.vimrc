let mapleader=','
syntax on

"let g:evervim_clear_search_highlight = 0

let g:evervim_disable_folding=1
set tags=tags
nnoremap c "_c
set nocompatible
set showcmd
filetype plugin on
set encoding=utf-8
set number relativenumber
set mouse=a
set autoread
set smartcase
set incsearch
set noshowmode
set t_Co=256
set clipboard^=unnamed,unnamedplus
set showcmd
"set termguicolors
set background=dark

" Enable autocompletion:
set wildmode=longest,list,full
" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>o :setlocal spell! spelllang=en_us<CR>
map <leader>n :NERDTreeToggle<CR>f

" Save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

map <C-z> <plug>NERDCommenterToggle

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Theme options
"let g:evervim_color_theme="Monokai"
let g:evervim_airline_theme="dracula"
"let g:evervim_light_background = 0

let g:evervim_smooth_scrolling = 1
let g:evervim_transparent_bg = 0
let g:airline_powerline_fonts = 1
let g:evervim_font="FiraCode NF"
let g:override_evervim_bundles = 1
let g:evervim_bundle_groups=['general', 'appearance', 'writing', 'programming', 'python', 'javascript', 'typescript', 'html', 'css', 'misc', 'go', 'rust', 'cpp', 'lua']

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-clangd',
  \ 'coc-sh'
  \ ]
" Prevent x from overriding what's in the clipboard.
noremap x "_x
noremap X "_x

noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>
