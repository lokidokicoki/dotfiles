" cycle between active buffers
nnoremap <silent> <F2> :bprevious<CR>
nnoremap <silent> <F3> :bnext<CR>
nnoremap <silent> <F6> :BufExplorerHorizontalSplit<CR>

" toggle tagbar visibility
nmap <F8> :TagbarToggle<CR>

let notabs = 1
nnoremap <silent> <F9> :let notabs=!notabs<Bar>:if notabs<Bar>:tabo<Bar>:else<Bar>:tab bal<Bar>:tabn<Bar>:endif<CR>

let loclistopen = 1
nnoremap <silent> <F5> :let loclistopen=!loclistopen<Bar>:if loclistopen<Bar>:lopen<Bar>:else<Bar>:lclose<Bar>:endif<CR>

" Close the current buffer and move to the previous one
nmap <leader>bq :bp <BAR> bd #<CR>
