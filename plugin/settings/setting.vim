" vimrc
set showtabline=2
set nobomb
set title
set nobackup        " no backup file
set noswapfile      " no swap file

"set list listchars=tab:»·,trail:·

set number
set cindent
set smartindent
set autoindent
set laststatus=2
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set ignorecase
set ruler
set cursorline
set cursorcolumn
set nowrap
set pastetoggle=<F9>
set hlsearch
set incsearch

map <Leader><Leader> <Leader>c<space>

nmap <leader>v :tabe $MYVIMRC<CR>

" disable splashscreen
set shortmess+=I

" ignores
set wildignore+=*.o,*.obj,*.pyc                " output objects
set wildignore+=*.png,*.jpg,*.gif,*.ico        " image format
set wildignore+=*.swf,*.fla                    " image format
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv        " media format
set wildignore+=*.git*,*.hg*,*.svn*            " version control system
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store
set wildignore+=log/**
set wildignore+=tmp/**

"Tabe open
noremap TT :tabe<Space>

"NERDTree
map <C-o>   :NERDTreeToggle<CR>

" Setting Highlight color
hi cursorcolumn   ctermbg=black
hi CursorLine     cterm=none ctermbg=black
hi LineNr         ctermbg=23 ctermfg=73
hi Normal ctermbg=none
hi TabLineSel ctermfg=white ctermbg=52
hi TabLine ctermfg=white ctermbg=darkblue
hi TabLineFill ctermfg=darkblue


" coffee indent fold
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab softtabstop=2 tabstop=2

au BufNewFile,BufRead *.html.slim set syntax=slim

" Javascript indent
au BufNewFile,BufReadPost *.js setl shiftwidth=2 expandtab softtabstop=2 tabstop=2
au BufNewFile,BufReadPost *.json setl shiftwidth=2 expandtab softtabstop=2 tabstop=2


"CSS,SCSS,SASS
au BufNewFile,BufReadPost *.css setl shiftwidth=2 expandtab softtabstop=2 tabstop=2
au BufNewFile,BufReadPost *.scss setl shiftwidth=2 expandtab softtabstop=2 tabstop=2
au BufNewFile,BufReadPost *.sass setl shiftwidth=2 expandtab softtabstop=2 tabstop=2
au BufRead,BufNewFile *.scss set filetype=css
au BufRead,BufNewFile *.sass set filetype=css
au BufNewFile,BufRead *.sass set syntax=sass

"TagBar
nnoremap <C-l>  :TagbarToggle<CR>
let g:tagbar_autofocus = 1

"SwitchTab
imap jj <ESC>
imap kk <ESC>

setlocal omnifunc=syntaxcomplete#Complete

" hit enter to cancel searched highlight
noremap <CR> :nohlsearch<CR>
noremap <F2> :CoffeeLint\|cwindow<CR>

" select ALL
"map <C-A> ggVG
" Switch Highlight
noremap <Leader>c :set cursorline! cursorcolumn!<CR>

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

" Removes tailing spaces.
au! BufWrite * mark ' | silent! %s/\s\+$// | norm ''
" Replaces tab to spaces.
au BufWrite * :retab
" Highlights characters over 80
highlight OverLength ctermbg=5 ctermfg=white guibg=#cc0000
match OverLength /\%81v.\+/

" Makes vim setting works immediately.
autocmd! BufWritePost setting.vim source %

" Creates HTML skeleton when file extension is *.html
autocmd BufNewFile *.html so ~/.vim/html.txt
autocmd BufNewFile *.html exe "1," . 10 . "g/name=\"created\" content=\".*\"/s//name=\"created\" content=\"" .strftime("%Y-%m-%d"). "\""
autocmd BufWritePre,FileWritePre *.html exe "1," . 10 . "g/name=\"modified\" content=\".*\"/s//name=\"modified\" content=\"" .strftime("%c"). "\""

" JSLint
map <buffer><silent> <F8> :w<CR>:make %<CR>:cw<CR>

" Click F3 to output debug message in view
map <F3> o"<%= debug(@) %><Esc>F$@

" Disable useless HTML rendering (<a/>, <em/>, <strong/>)
let html_no_rendering=1

" Set tab settings.
highlight TabLine cterm=none ctermbg=4 gui=none
highlight TabLineFill ctermbg=10
highlight TabLineSel ctermbg=1

