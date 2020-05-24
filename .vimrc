"                           __                     _                           
"                          / _|                   | |                          
"                      ___| |_ ___  __ _ _ __   __| | ___ _ __ ___  ___  _ __  
"                     / __|  _/ __|/ _` | '_ \ / _` |/ _ \ '__/ __|/ _ \| '_ \ 
"                    | (__| | \__ \ (_| | | | | (_| |  __/ |  \__ \ (_) | | | |
"                     \___|_| |___/\__,_|_| |_|\__,_|\___|_|  |___/\___/|_| |_|
"
"
"==============================         .vimrc WORK - SNI            ==============================
"==================================================================================================

syntax on

set belloff=all
set incsearch
set nobackup
set noerrorbells
set noswapfile
set nu
set number relativenumber
set shiftwidth=4
set smartindent
set smartcase
set tabstop=4 softtabstop=4 expandtab
set undodir=~/.vim/undodir
set undofile

highlight Comment cterm=italic

"NERDTREE
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

let NERDTreeQuitOnOpen = 1
let NERDTreeMinimaUI = 1
let NERDTreeDirArrows = 1

call plug#begin('~/.vim/plugged')

Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'leafgarland/typescript-vim'
Plug '~/.vim/unmanaged-plugins/gruvbox-material'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/goyo.vim'

call plug#end()

syntax enable
if has('termguicolors')
  set termguicolors
endif

" Gruvbox Material theme
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_disable_italic_comment = 0
let g:gruvbox_material_menu_selection_background = 'green'
let g:gruvbox_material_palette = 'material'
let g:gruvbox_material_sign_column_background = 'none'

colorscheme gruvbox-material
set background=dark

" Markdown Preview 
let g:mkdp_auto_start = 0
let g:mkdp_refresh_slow = 1
let g:mkdp_browser = 'firefox'

" Airline
let g:airline_theme = 'gruvbox_material'

" Mappings
map <C-n> :NERDTreeToggle<CR>

"remap normal copy/paste keys to vim registers
vnoremap <C-c> "+y
noremap <C-v> "+P
