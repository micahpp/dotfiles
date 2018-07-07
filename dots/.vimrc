set nocompatible		" be iMproved, required for vundle
filetype off			" required for vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'

" All of your Plugins must be added before the following line
call vundle#end()		" required for vundle
filetype plugin indent on	" required for vundle

set number
set clipboard=unnamed
set laststatus=2		" set status line to always visible  (for lightline)
set showmatch			" 'show' matching bracket/braces in open/close pair
set tabstop=4			" visual spaces per TAB
set softtabstop=4		" n spaces in TAB when editing (including backspace)
set expandtab			" tabs are spaces
set cursorline			" highlight current line 

colorscheme gruvbox
syntax on

