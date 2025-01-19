" Install plug-in manager
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plug-ins
call plug#begin('~/.vim/plugged')

Plug 'vim-utils/vim-man'

call plug#end()

" Set Vim as MANPAGER
autocmd FileType man setlocal nowrap
autocmd FileType man setlocal spell
autocmd FileType man setlocal colorcolumn=
autocmd FileType man nnoremap <buffer> q :quit<CR>
autocmd FileType man highlight manOption ctermfg=Yellow guifg=Yellow

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Disable the audible bell and set the visual bell to do nothing
set visualbell t_vb=

" Disable Vi compatibility mode for better Vim features
set nocompatible

" Enable syntax highlighting
syntax on

" Enable automatic filetype detection
filetype on

" Set line numbers to gray
highlight LineNr ctermfg=grey

" Set the number of spaces that a tab character represents
set tabstop=2       " Number of spaces a tab character occupies

" Set the number of spaces inserted when hitting Tab in insert mode
set softtabstop=2   " Number of spaces inserted with Tab in insert mode

" Set the number of spaces for each indentation level
set shiftwidth=2    " Number of spaces used for each level of indentation

" Use spaces instead of actual tab characters
set expandtab       " Converts tabs to spaces

" Increase the command history limit to 1000 entries
set history=1000

" (This line seems to be an incomplete mapping and doesn't currently do anything)
"\C-v": ""          " Incomplete mapping, possibly intended for visual paste

