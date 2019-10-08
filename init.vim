set nocompatible
let g:mapleader=" "

call plug#begin('~/.vim/plugged')

" THEMES
Plug 'liuchengxu/space-vim-dark'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Plug '/usr/local/opt/fzf'
"Plug 'junegunn/fzf.vim'
"Plug 'scrooloose/nerdtree'
"Plug 'sheerun/vim-polyglot'
"Plug 'tpope/vim-surround'
"Plug 'easymotion/vim-easymotion'
"Plug 'edkolev/tmuxline.vim'

"auto close parentes, aspas, chavetas, etc
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
"highlight espaços
Plug 'ntpeters/vim-better-whitespace'
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'
"Plug 'prettier/vim-prettier', {
""  \ 'do': 'yarn install',
""  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
"Plug 'HerringtonDarkholme/yats.vim'

" Linguas
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
let  g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-emmet', 'coc-tslint', 'coc-prettier']

call plug#end()

let g:AutoPairsMultilineClone=0
let g:AutoPairsMapSpace=0

"filetype plugin indent on
"set rtp+=/usr/local/opt/fzf
"filetype on

set cursorline                                 "highlight a linha onde se esta"
set guifont=*
set ignorecase
set encoding=utf-8
set expandtab softtabstop=0 tabstop=2 smarttab "tab settings"
set autoindent smartindent
set ruler                                      "mostra sempre o cursor"
set autowrite autoread                         "escreve/le quando se muda de buffers"
set history=50
set showcmd
set undofile undodir=/tmp

" set shiftwidth=2 splitright splitbelow

set nornu nu
"set clipboard=unnamedplus " yank to clipboard
"set nolist
"set listchars=eol:¬,trail:·,tab:▶·
"set wildmenu
"set lazyredraw
set wildignore+=node_modules/**

set hlsearch
set showmatch
let g:loaded_matchparen=1

set mouse=a

hi Comment gui=italic cterm=italic
hi htmlArg gui=italic cterm=italic

"" For Python - enable all Python syntax highlighting features
let python_highlight_all = 1
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif

" Flow
let g:flow#autoclose = 1
let g:flow#enable = 0
let g:flow#showquickfix = 0

" JSX/React
let g:jsx_ext_required = 1 " Allow JSX in normal JS files

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Auto remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
syntax on

" AIRLINE THEMES
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'

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

" Set at bottom to override default from color schemes
" hi Normal ctermbg=NONE guibg=NONE
" hi NonText ctermbg=NONE
highlight clear SignColumn
highlight clear CursorLineNR

if executable('ag')
    " Note we extract the column as well as the file and line number
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m
endif
let g:ackprg = 'ag --nogroup --nocolor --column'

set secure

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
endif
