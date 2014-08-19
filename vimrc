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

" Ignore public upload files.
set wildignore+=*/public/uploads/*,*.so,*.swp,*.zip,*.gz
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

highlight SignColumn ctermbg=0

set wildignore+=*/dist/*,*/node_modules/*
au BufNewFile,BufRead *.ejs set syntax=html

let g:syntastic_coffee_coffeelint_args = "--csv -f ~/coffeelint.json"
