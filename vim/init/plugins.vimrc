
" --- Plugin specific settings ---

" vim-python-virtualenv tweaks
let g:python3_host_prog='/usr/bin/python3'

set omnifunc=syntaxcomplete#Complete

" pep8 plugin setting
let g:pymode_indent = 0

" ======================
" emmet settings
" ======================
let g:user_emmet_install_global = 0
let g:user_emmet_expandabbr_key = '<tab>'
autocmd FileType html,hbs,handlebars,css,scss EmmetInstall

" ======================
" Ultisnips settings
" ======================
" Ultisnips settings
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-u>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" ======================
" NERDtree settings
" ======================
let NERDTreeShowHidden=1
if !&diff
	autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | endif
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
end

" ======================
" Airline settings
" ======================
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1	" enable buffer list

" ======================
" Vista settings
" ======================
if !&diff
	autocmd BufRead * nested :TagbarToggle
end

" ======================
" ALE settings
" ======================
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_fxers = {'*': ['remove_trailing_lines', 'trim_whitespace']}

" ======================
" Gutentags settings
" ======================
let g:gutentags_cache_dir = $HOME .'/.cache/gutentags'
let g:gutentags_file_list_command = {
			\ 'markers': {
			\ '.git': 'git ls-files',
				\}
				\}

let g:mustache_abbreviations = 1
