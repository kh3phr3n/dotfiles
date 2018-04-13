" File: ~/.vim/gvimrc
" Description: GVim configuration file

" Section: Options
" ----------------

" Disable beep and flash
set vb t_vb=
" Disable menubar
set guioptions-=m
" Disable toolbar
set guioptions-=T
" Disable gtk tabs
set guioptions-=e
" Disable left scrollbar
set guioptions-=L
" Disable right scrollbar
set guioptions-=r

" Set Font family
set antialias
" set guifont=Fira\ Mono\ Medium\ 13
set guifont=Iosevka\ Term\ Medium\ 14

" Section: Mappings
" -----------------

" Omni Completion
inoremap <C-Space> <C-X><C-O>
" Word Completion
inoremap <S-Space> <C-X><C-N>

" Include user's local gVim config
if filereadable(expand('~/.vim/gvimrc.local'))
    source ~/.vim/gvimrc.local
endif

