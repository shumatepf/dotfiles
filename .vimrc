set nocompatible              " be iMproved, required
filetype off                  " required

set term=xterm-256color

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" required
Plugin 'VundleVim/Vundle.vim'

" color theme plugins
Plugin 'szorfein/fromthehell.vim'
Plugin 'morhetz/gruvbox'
Plugin 'flazz/vim-colorschemes'

" status line
Plugin 'itchyny/lightline.vim'

" wal for vim - to fix tmux
Plugin 'dylanaraps/wal.vim'

" python indentation
Plugin 'Vimjas/vim-python-pep8-indent'

" javascript format
Plugin 'maksimr/vim-jsbeautify'

call vundle#end()
filetype plugin indent on

"line numbers
set number

"syntax highlighting
syntax on

" theme
colorscheme wal

"tab spaces
set tabstop=4

"how many spaces when shifting
set shiftwidth=4

"auto indent
set autoindent

autocmd Filetype ruby setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype haskell setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype c setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>

"line <= 80 characters
" set textwidth=80

"enable color column
"set colorcolumn=81
"highlight colorcolumn ctermbg=4

"disables redrawing of screen occasionaly
set lazyredraw

"enable lightline
set laststatus=2

"disable default statusline
set noshowmode

let g:lightline = { 'colorscheme': 'seoul256'}

