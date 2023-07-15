" cycle between active buffers
nnoremap <silent> <F2> :bprevious<CR>
nnoremap <silent> <F3> :bnext<CR>
nnoremap <silent> <F6> :BufExplorerHorizontalSplit<CR>

let notabs = 1
nnoremap <silent> <F8> :let notabs=!notabs<Bar>:if notabs<Bar>:tabo<Bar>:else<Bar>:tab ball<Bar>:tabn<Bar>:endif<CR>

let loclistopen = 1
noremap <silent> <F5> :let loclistopen=!loclistopen<Bar>:if loclistopen<Bar>:lopen<Bar>:else<Bar>:lclose<Bar>:endif<CR>
