set nocompatible
let g:mapleader=" "

call plug#begin('~/.vim/plugged')

if !has('nvim') && !exists('g:gui_oni') | Plug 'tpope/vim-sensible' | endif

"Plug '/usr/local/opt/fzf'
"Plug 'junegunn/fzf.vim'
"Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/limelight.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'edkolev/tmuxline.vim'
Plug 'joshdick/onedark.vim'
Plug 'Raimondi/delimitMate'
Plug 'dense-analysis/ale'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'HerringtonDarkholme/yats.vim'
call plug#end()

"filetype plugin indent on
"set rtp+=/usr/local/opt/fzf
"filetype on

set guifont=*
set ignorecase
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set softtabstop=0
set expandtab
set splitright
set splitbelow
set nornu
set nu
set clipboard=unnamedplus " yank to clipboard

set autoindent
set smartindent

set ruler
set nolist
set listchars=eol:¬,tab:!·,trail:·

set wildmenu
set lazyredraw
set wildignore+=node_modules/**

set hlsearch
set showmatch
let g:loaded_matchparen=1

set mouse=a

let g:ale_warn_about_trailing_blank_lines = 1
" let g:syntastic_python_checkers = ['pylama']

hi Comment gui=italic cterm=italic
hi htmlArg gui=italic cterm=italic


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Auto remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
syntax on

" AIRLINE THEMES
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'

syntax enable
" Only valid for themes with light mode
set background=dark

" Enable italics for themes
let g:spacvimdark_terminal_italics=1
let g:onedark_terminal_italics=1
let g:enable_bold_font = 1
let g:enable_italic_font = 1

" Theme specific
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'allow_italic': 1
  \     }
  \   }
  \ }

" SET_COLORSCHEME
colorscheme space-vim-dark

"test
