set encoding=utf-8
call pathogen#infect()
filetype on
filetype indent on
filetype plugin on
syntax enable
set background=dark
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
let g:Powerline_symbols = 'fancy'
colorscheme solarized
set number
set cindent
set smartindent
set autoindent
set laststatus=2
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoread
let g:SuperTabDefaultCompletionType="context"
"Tabe open
noremap TT :tabe<Space>

"NERDTree
map <C-o>   :NERDTreeToggle<CR>

" coffee indent fold
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab softtabstop=2 tabstop=2

" Javascript indent
au BufNewFile,BufReadPost *.js setl shiftwidth=2 expandtab softtabstop=2 tabstop=2
au BufNewFile,BufReadPost *.json setl shiftwidth=2 expandtab softtabstop=2 tabstop=2

au BufNewFile,BufReadPost *.css setl shiftwidth=2 expandtab softtabstop=2 tabstop=2
au BufNewFile,BufReadPost *.scss setl shiftwidth=2 expandtab softtabstop=2 tabstop=2
au BufNewFile,BufReadPost *.sass setl shiftwidth=2 expandtab softtabstop=2 tabstop=2
"SCSS
au BufRead,BufNewFile *.scss set filetype=css 
au BufRead,BufNewFile *.sass set filetype=css 

"TagBar 
nnoremap <C-l>  :TagbarToggle<CR>
let g:tagbar_autofocus = 1

"SwitchTab
imap jj <ESC>
imap kk <ESC> 

setlocal omnifunc=syntaxcomplete#Complete

" hit enter to cancel searched highlight
noremap <CR> :nohlsearch<CR>
noremap <F2> :CoffeeLint<CR>

" select ALL
map <C-A> ggVG

let mapleader = ","

let g:tagbar_type_css = {
    \ 'ctagstype' : 'css',
    \ 'kinds'     : [
    \ 'c:classes',
    \ 's:selectors',
    \ 'i:identities'
    \ ],
    \ }

let g:tagbar_type_scss = {
    \ 'ctagstype' : 'scss',
    \ 'kinds'     : [
    \ 'c:classes',
    \ 's:selectors',
    \ 'm:mixing',
    \ 'i:identities'
    \ ],
    \ }




highlight Normal ctermbg=none
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif

let g:acp_behaviorUserDefinedMeets = 'acp#meetsForKeyword'
let g:acp_behaviorUserDefinedFunction = 'syntaxcomplete#Complete'

" Create a template file.
autocmd BufNewFile *.html so ~/.vim/html.txt
autocmd BufNewFile *.html exe "1," . 10 . "g/name=\"created\" content=\".*\"/s//name=\"created\" content=\"" .strftime("%Y-%m-%d"). "\""
autocmd BufWritePre,FileWritePre *.html exe "1," . 10 . "g/name=\"modified\" content=\".*\"/s//name=\"modified\" content=\"" .strftime("%c"). "\""
