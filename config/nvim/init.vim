" File: ~/.config/nvim/init.vim
" Description: Nvim configuration file

" Nvim plugin manager (vim-plug)
if filereadable(expand('~/.config/nvim/init.plugins'))
    source ~/.config/nvim/init.plugins
endif

" Dark theme
if filereadable(expand('~/.config/nvim/init.onedark'))
    source ~/.config/nvim/init.onedark
endif

" Cursor shapes
let &t_SI="\<Esc>[6 q"
let &t_SR="\<Esc>[4 q"
let &t_EI="\<Esc>[2 q"

" Section: Options
" ----------------

" Enable listchars
set list
" Enable mouse
set mouse=a
" Highlight brackets
set showmatch
" Autowrite changes
set autowrite
" No screen redraw
set lazyredraw
" Fix cursor lag
set ttimeoutlen=0
" Keep cursor position
set nostartofline
" Enable 24-bit colors
set termguicolors

" No backup files
set nobackup
set noswapfile
set nowritebackup

" Line numbers
set number
set numberwidth=1

" 4 real spaces
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Text wrapping
set nowrap
set whichwrap=<,>,[,]

" No folds closed
set foldlevel=99
set foldmethod=indent

" File encoding
set encoding=utf-8
set fileencoding=utf-8
set fileformats=unix,dos,mac

" Popup menu
set pumheight=15
set completeopt=longest,menuone

" Toggle paste mode
set pastetoggle=<F12>
" Command-line completion
set wildmode=longest:full,full
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
" nnoremap <F3> :NeoCompleteToggle<CR>
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

" Section: Autocommands
" ---------------------

if has('autocmd')
    " Change current directory
    autocmd BufEnter * silent! lcd %:p:h

    " HTML-CSS-Django settings
    autocmd FileType python   setlocal filetype=python.django
    autocmd FileType htm,html setlocal filetype=html.htmldjango
    autocmd FileType css,html setlocal tabstop=4 softtabstop=4 shiftwidth=4
endif

