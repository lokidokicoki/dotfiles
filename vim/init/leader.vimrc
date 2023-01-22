
nnoremap <silent> <F2> :bprevious<CR>
nnoremap <silent> <F3> :bnext<CR>

let notabs = 1
nnoremap <silent> <F8> :let notabs=!notabs<Bar>:if notabs<Bar>:tabo<Bar>:else<Bar>:tab ball<Bar>:tabn<Bar>:endif<CR>
