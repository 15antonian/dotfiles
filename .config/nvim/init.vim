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
set termguicolors
set background=dark
set nowrap

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

let g:smooth_scrolling = 1
let g:airline_powerline_fonts = 1

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
noremap <silent> <C-S>         <C-O>:update<CR>
nmap <C-n> :NERDTreeToggle<CR>


call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-utils/vim-man'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'lokaltog/vim-powerline'
Plug 'sheerun/vim-polyglot'
Plug 'mhinz/vim-startify'
Plug 'dracula/vim', { 'name': 'dracula' }
call plug#end()

colorscheme dracula
"let g:gruvbox_material_background = 'soft'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='luna'
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:rainbow_active = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
