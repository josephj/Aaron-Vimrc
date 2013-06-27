set encoding=utf-8
call pathogen#infect()
filetype on
filetype indent on
if &diff
    filetype plugin off
else
    filetype plugin on
endif
syntax enable
set t_Co=256
colorscheme solarized
"colors hemisu

" Leader Key
let mapleader = ","
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:Powerline_symbols = 'fancy'
let g:SuperTabDefaultCompletionType="context"

set background=dark
set autoread
