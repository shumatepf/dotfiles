
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

" Theme Install
Plugin 'morhetz/gruvbox'

" Python Syntax
Plugin 'vim-python/python-syntax'

" Nerd Tree - show files on left
Plugin 'preservim/nerdtree'

" Git change highlighting
Plugin 'mhinz/vim-signify'

" Status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Nerd Commenter - group comments
Plugin 'preservim/nerdcommenter'

" Auto pair brackets etc.
Plugin 'jiangmiao/auto-pairs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"set rtp+=~/.vim/bundle/YouCompleteMe

"line numbers
set number

"syntax highlighting
syntax on

" theme
" colorscheme gruvbox 
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

"tab spaces
set tabstop=4

"how many spaces when shifting
set shiftwidth=4

"auto indent
set autoindent

set expandtab

set hlsearch

set incsearch

set ignorecase

"remove default status display
set noshowmode

"python syntax highlighting
let g:python_highlight_all = 1

"status line theme
let g:airline_theme='ravenpower'

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

