" File type settings
syntax on
filetype plugin indent on

" Section: Options
" ----------------

" Enable listchars
set list
" Cursor position
set ruler
" Enable mouse
set mouse=a
" Fast terminal
set ttyfast
" Highlight brackets
set showmatch

" File actions
set autoread
set autowrite

" Search features
set hlsearch
set incsearch
set ignorecase

" No screen redraw
set lazyredraw
" Enable status line
set laststatus=2
" Keep cursor position
set nostartofline

" No backup files
set viminfo=
set nobackup
set noswapfile
set nowritebackup

" Line numbers
set number
set numberwidth=1

" Indentation
set expandtab
set autoindent

" 4 real spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Toggle paste mode
set pastetoggle=<F1>

" Text wrapping
set nowrap
set whichwrap=<,>,[,]

" No folds closed
set foldlevel=99
set foldmethod=indent

" File encoding
set encoding=utf-8
set fileencoding=utf-8

" End-of-line formats
set fileformats=unix,dos,mac
" Fold and vertical symbols
set fillchars=fold:\ ,vert:\|

" Command-line completion
set wildmenu
set wildmode=longest:full,full

" Popup menu
set pumheight=15
set completeopt=longest,menuone

" Allow backspacing
set backspace=indent,eol,start
" Tabstops, EOLs and Trails
set listchars=tab:▸\ ,eol:¬,trail:·
" Dictionary word completion
set dictionary+=/usr/share/dict/words

" Statusline (Inspired by statline.vim)
set statusline+=%<%f\ %h%m%r[%{strlen(&ft)?&ft:'none'}]
set statusline+=[%{&fileformat}→%{strlen(&fenc)?&fenc:&enc}]
set statusline+=%=L%l/%L:C%c\ %P

" Section: Mappings
" -----------------

" Toggle listchars symbols
nnoremap <F2> :set list!<CR>

" Save current buffer
noremap  <C-S>      :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" Section: Autocommands
" ---------------------

if has('autocmd')
    " Remove all trailing whitespace
    autocmd BufWritePre * :%s/\s\+$//e

    " Change current directory
    autocmd BufEnter * silent! lcd %:p:h
endif

