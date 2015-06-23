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

" Leader Key
let mapleader = ","
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:Powerline_symbols = 'fancy'
let g:SuperTabDefaultCompletionType="context"

set background=light
set autoread
set fileencodings=utf8,big5,gbk,latin1
set fileencoding=utf8

" Ignore public upload files.
set wildignore+=*/public/uploads/*,*/doc/*,*.so,*.swp,*.zip,*.gz
let g:ctrlp_custom_ignore = '\v[\/]\(.git)$'

highlight SignColumn ctermbg=0

set wildignore+=*/dist/*,*/node_modules/*
au BufNewFile,BufRead *.ejs set syntax=html


