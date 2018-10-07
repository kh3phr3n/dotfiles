" File: ~/.vim/vimrc
" Description: Vim configuration file

" Vim plugin manager (vim-plug)
if filereadable(expand('~/.vim/vimrc.plugins'))
    source ~/.vim/vimrc.plugins
endif

" Dark theme
if filereadable(expand('~/.vim/vimrc.onedark'))
    source ~/.vim/vimrc.onedark
endif

" Cursor shapes
let &t_SI="\<Esc>[6 q"
let &t_SR="\<Esc>[4 q"
let &t_EI="\<Esc>[2 q"

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
" Fix cursor lag
set ttimeoutlen=0
" Keep cursor position
set nostartofline
" Enable 24-bit colors
set termguicolors

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

" Text wrapping
set nowrap
set whichwrap=<,>,[,]

" Toggle paste mode
set pastetoggle=<F12>

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
set statusline+=%<%f\ %h%m%r%{gitbranch#name()}[%{strlen(&ft)?&ft:'none'}]
set statusline+=[%{&fileformat}→%{strlen(&fenc)?&fenc:&enc}]
set statusline+=%=L%l/%L:C%c\ %P

" Section: Mappings
" -----------------

" Toggle NERDTree panel
nnoremap <F1> :NERDTreeToggle<CR>
" Toggle Tagbar panel
nnoremap <F2> :TagbarToggle<CR>
" Toggle NeoComplete auto
nnoremap <F3> :NeoCompleteToggle<CR>
" Toggle Syntastic checker
nnoremap <F4> :SyntasticToggleMode<CR>
" Toggle GitGutter signs
nnoremap <F5> :GitGutterToggle<CR>
" Toggle indentLine guides
nnoremap <F6> :IndentLinesToggle<CR>
" Toggle listchars symbols
nnoremap <F7> :set list!<CR>
" Toggle termguicolors mode
nnoremap <F8> :set termguicolors!<CR>

" Toggle fold using mouse
nnoremap <2-LeftMouse> za
" Omni Completion (C-Space)
inoremap <C-@> <C-X><C-O>

" Save current buffer
noremap  <C-S>      :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" Splits navigation
nnoremap <silent> <C-H> :wincmd h<CR>
nnoremap <silent> <C-J> :wincmd j<CR>
nnoremap <silent> <C-K> :wincmd k<CR>
nnoremap <silent> <C-L> :wincmd l<CR>

" Tabs navigation
nnoremap <silent> <S-T> :tabnew<CR>
nnoremap <silent> <S-L> :tabnext<CR>
nnoremap <silent> <S-H> :tabprevious<CR>

" Section: Plugins
" ----------------

" <Leader> key
let g:mapleader=','

" Disable indentLine
let g:indentLine_enabled=0

" Python syntax
let g:python_highlight_all=1

" NERDTree options
let g:NERDTreeWinSize=25
let g:NERDTreeMinimalUI=1
let g:NERDTreeStatusline='%t'

" Tagbar options
let g:tagbar_width=35
let g:tagbar_compact=1
let g:tagbar_iconchars=['▸', '▾']

" Clang options
let g:clang_auto=0
let g:clang_c_completeopt='menuone'
let g:clang_cpp_completeopt='menuone'

" GitGutter options
let g:gitgutter_enabled=0
let g:gitgutter_sign_added='+'
let g:gitgutter_sign_removed='-'
let g:gitgutter_sign_modified='~'
let g:gitgutter_sign_modified_removed='±'

" NeoComplete requirements
let g:jedi#completions_enabled=0
let g:jedi#auto_vim_configuration=0
" Jedi-vim options
let g:jedi#popup_on_dot=0
let g:jedi#force_py_version=3
let g:jedi#show_call_signatures=2
let g:jedi#use_splits_not_buffers='winwidth'

" Syntastic symbols
let g:syntastic_error_symbol='●'
let g:syntastic_warning_symbol='●'
let g:syntastic_style_error_symbol='●'
let g:syntastic_style_warning_symbol='●'
" Syntastic options
let g:syntastic_enable_highlighting=0
" Syntastic mode
let g:syntastic_mode_map={'mode': 'passive'}

" UltiSnips options
let g:UltiSnipsUsePythonVersion=3
" UltiSnips triggers
let g:UltiSnipsExpandTrigger='<Tab>'
let g:UltiSnipsJumpForwardTrigger='<Tab>'
let g:UltiSnipsJumpBackwardTrigger='<S-Tab>'

" NeoComplete options
let g:neocomplete#enable_at_startup=0
let g:neocomplete#enable_smart_case=1
let g:neocomplete#enable_auto_select=1

" Define force_omni_input_patterns
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns={}
endif

" Records keyword patterns to Omni completion
let g:neocomplete#force_omni_input_patterns.python=
\ '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'

" Section: Autocommands
" ---------------------

if has('autocmd')
    " Change current directory
    autocmd BufEnter * silent! lcd %:p:h

    " Python settings
    autocmd FileType python setlocal completeopt-=preview
    autocmd FileType python setlocal filetype=python.django
    autocmd FileType python setlocal omnifunc=jedi#completions

    " HTML-CSS settings
    autocmd FileType htm,html setlocal filetype=html.htmldjango
    autocmd FileType css,html setlocal tabstop=4 softtabstop=4 shiftwidth=4
endif

" Include user's local Vim config
if filereadable(expand('~/.vim/vimrc.local'))
    source ~/.vim/vimrc.local
endif

