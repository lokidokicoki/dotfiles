" --- Plugin specific settings ---
" vim-python-virtualenv tweaks
let g:python3_host_prog='/usr/bin/python3'

set omnifunc=syntaxcomplete#Complete

" ================
" pep8 plugin setting
" ================
let g:pymode_indent = 0

" ================
" emmet settings
" ================
let g:user_emmet_install_global = 0
let g:user_emmet_expandabbr_key = '<tab>'
autocmd FileType html,hbs,handlebars,css,scss EmmetInstall

" ================
" Ultisnips settings
" ================
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-u>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" ================
" NERDtree settings
" ================
if !&diff
	let NERDTreeShowHidden=1
	autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | endif
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
end

" ================
" ALE settings apllied to all files
" ================
let g:ale_fix_on_save = 1
let g:ale_completion_enabled=1
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}

" ================
" Guten Tags settings
" ================
let g:gutentags_cache_dir = $HOME . '/.cache/gutentags'
let g:gutentags_file_list_command = {
      \ 'markers': {
      \ '.git': 'git ls-files',
      \ },
      \ }

" ================
" Airline settings
" ================
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t'

" ================
" Tagbar settings
" ================
if !&diff
	autocmd BufEnter * nested :TagbarOpen
end

" ================
" mustache/handlebars settings
" ================
let g:mustache_abbreviations = 1

" ================
" Markdown settings
" ================
let g:vim_markdown_folding_disabled = 1

" ================
" Coc settings
" ================
" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
