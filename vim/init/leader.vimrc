" cycle between active buffers
nnoremap <silent> <F2> :bprevious<CR>
nnoremap <silent> <F3> :bnext<CR>
nnoremap <silent> <F6> :BufExplorerHorizontalSplit<CR>
nmap <F8> :TagbarToggle<CR>

let loclistopen = 1
noremap <silent> <F5> :let loclistopen=!loclistopen<Bar>:if loclistopen<Bar>:lopen<Bar>:else<Bar>:lclose<Bar>:endif<CR>
