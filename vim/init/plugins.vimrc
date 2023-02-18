
" --- Plugin specific settings ---

" vim-python-virtualenv tweaks
let g:python3_host_prog='/usr/bin/python3'

set omnifunc=syntaxcomplete#Complete

let g:tagbar_ctags_bin='/usr/bin/ctags'  " Proper Ctags locations
"let g:tagbar_ctags_bin='/usr/local/bin/ctags'  " Proper Ctags locations
"let g:tlist_ctags_cmd='/usr/local/bin/ctags'  " Proper Ctags locations

" emulate default status line; add git branch info
" requires addon from http://github.com/taq/vim-git-branch-info
let g:git_branch_status_head_current=1
let g:git_branch_status_text=''
let g:git_branch_status_nogit=''
if exists ("GitBranchInfoString")
    set statusline=%<%f\ %{GitBranchInfoString()}\ %h%m%r%=%-14.(%l,%c%V%)\ %P
en

" syntastic settings
if !&diff
	let g:syntastic_check_on_open=1
	let g:syntastic_enable_signs=1
	let g:syntastic_auto_loc_list=1
	let g:syntastic_always_populate_loc_list=1
	let g:syntastic_check_on_wq=0
	let g:syntastic_javascript_checkers = ['jscs', 'jshint']
	set statusline=%#warningmsg#%{SyntasticStatuslineFlag()}%*%t[%{strlen(&fenc)?&fenc:'none'}%{&ff}],%h%m%r%y%=%c,%l/%L\ %P
endif

" pep8 plugin setting
let g:pymode_indent = 0

" emmet settings
let g:user_emmet_install_global = 0
let g:user_emmet_expandabbr_key = '<tab>'
autocmd FileType html,hbs,handlebars,css,scss EmmetInstall

" Ultisnips settings
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-u>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" NERDtree settings
let NERDTreeShowHidden=1
autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:mustache_abbreviations = 1
let g:gutentags_cache_dir = $HOME .'/.cache/gutentags'

