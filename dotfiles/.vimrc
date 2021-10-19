
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" You Complete Me
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"set rtp+=~/.vim/bundle/YouCompleteMe

"line numbers
set number

"syntax highlighting
syntax on

" theme
" colorscheme wal

"tab spaces
set tabstop=4

"how many spaces when shifting
set shiftwidth=4

"auto indent
set autoindent

autocmd Filetype ruby setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype haskell setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype c setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>

"line <= 80 characters
" set textwidth=80

"enable color column
"set colorcolumn=81
"highlight colorcolumn ctermbg=4

"disables redrawing of screen occasionaly
set lazyredraw

