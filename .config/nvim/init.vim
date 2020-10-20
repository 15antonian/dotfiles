"-----------------Theming----------------------------
set termguicolors
set background=dark
"colorscheme dracula
let g:gruvbox_material_background = 'soft'
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='violet'
let g:airline_powerline_fonts = 1
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:rainbow_active = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"----------------------Plugins----------------------
call plug#begin('~/.config/nvim/plugged')
Plug 'vim-jp/vim-cpp'
Plug 'vim-utils/vim-man'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'neoclide/jsonc.vim'
Plug 'yuttie/comfortable-motion.vim'
"--------Auto completion/syntax highlighting--------------
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
"--------Status Bar theming--------------------------
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"--------CPP-------------------------------
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-scripts/c.vim'
Plug 'vim-scripts/a.vim'
Plug 'peterhoeg/vim-qml'
"--------Themes-------------------------------
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'chriskempson/base16-vim'
"Plug 'lokaltog/vim-powerline'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()
"let g:evervim_clear_search_highlight = 0

"-------General settings----------------------
let mapleader=','
syntax on
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
set nowrap
set autoread
set hidden
set smartindent
set lazyredraw
set modeline


let g:python3_host_prog = "/bin/python3.8"
" Give more space for displaying messages.
set cmdheight=2
set updatetime=50

set undofile                 "turn on the feature
set undodir=$HOME/.vim/undo  "directory where the undo files will be stored

"Tabbing
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

"Don't pass messages to |ins-completion-menu|.
set shortmess+=c

"Enable autocompletion:
set wildmode=longest,list,full

autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc
"---------polyglot settings----------------------
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

"Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>o :setlocal spell! spelllang=en_us<CR>
map <leader>n :NERDTreeToggle<CR>f

"Save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

map <C-z> <plug>NERDCommenterToggle
"Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

let g:smooth_scrolling = 1

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
"Prevent x from overriding what's in the clipboard.
noremap x "_x
noremap X "_x

"noremap S :%s//g<Left><Left>
noremap <silent> <C-S>  :update<CR>
vnoremap <silent> <C-S>    <C-C>:update<CR>
noremap <silent> <C-S>  <C-O>:update<CR>
nmap <C-n> :NERDTreeToggle<CR>

"Automatically deletes all trailing whitespace and newlines at end of file on save.
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritepre * %s/\n\+\%$//e
