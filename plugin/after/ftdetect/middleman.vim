" Middleman
if executable("middleman")
  autocmd BufRead,BufNewFile *.coffee map <F5> :% w !middleman build --verbose -c<CR>
else
  autocmd BufRead,BufNewFile *.coffee map <F5> :echo "you need to install middleman first!"<CR>
endif

