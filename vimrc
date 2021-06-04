set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" plugins for Vundle to manage

Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'docunext/closetag.vim'
Plugin 'elzr/vim-json'
Plugin 'gabrielelana/vim-markdown'
Plugin 'greplace.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'honza/vim-snippets'
Plugin 'itchyny/lightline.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'lilydjwg/colorizer'
Plugin 'majutsushi/tagbar'
Plugin 'marijnh/tern_for_vim'
Plugin 'mattn/emmet-vim'
Plugin 'mtscout6/vim-tagbar-css'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'myhere/vim-nodejs-complete'
Plugin 'nono/jquery.vim'
Plugin 'othree/html5.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'psf/black'
Plugin 'pylint.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic.git'
Plugin 'sirver/ultisnips'

"Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" --- general settings ---
" display filename and path in window title
set title

" allow for edited buffers that can be invisible
set hidden

syntax enable

syntax on

set nocompatible
set backspace=indent,eol,start

set directory=/var/tmp//

" enable mouse in all modes
set mouse=a
" make mouse behave like mac/windows/gnome
set mousemodel=popup_setpos

set splitbelow
set splitright

" hilight search results
set hlsearch
" incremental search
" set incsearch

" show patching parentheses
set showmatch

" always display status line
set laststatus=2
set ruler

" show partial command in status line
set showcmd

" display possible choices when tab completing
set wildmenu

set noet
set nowrap
set linebreak
set modeline
set number
set vb

hi clear SignColumn

" stop vim making backups for crontab
autocmd filetype crontab setlocal nobackup nowritebackup

" --- Plugin specific settings ---

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
" autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

" hide toolbars, tearoff menu items and don't fork
set guioptions-=T
set guioptions-=t
set guioptions+=f

if has ("win32")
    set guifont=DejaVu_Sans_Mono:h9
elseif has ("mac")
    set guifont=Source\ Code\ Pro:h12
else
    set guifont=Monospace\ 10
endif

set display+=lastline

set spelllang=en_gb

setlocal spell
set nospell
autocmd FileType debchangelog setlocal expandtab

" don't use tabs in python files
autocmd FileType javascript setlocal expandtab

if filereadable ("~/.vim/python.vim")
    autocmd FileType python source ~/.vim/python.vim
endif

au FileType python set
	\ shiftwidth=4
	\ tabstop=4
	\ softtabstop=4
	\ autoindent
	\ textwidth=79
	\ fileformat=unix

if hostname() == "raptor"
	au FileType python set  noexpandtab
elseif hostname() == "penguin"
	au FileType python set  expandtab
	autocmd BufWritePre *.py execute ':Black'
endif




autocmd filetypedetect BufNewFile,BufRead COMMIT_EDITMSG set ft=gitcommit

" actionscript, not atlas
autocmd! filetypedetect BufNewFile,BufRead *.as
autocmd  filetypedetect BufNewFile,BufRead *.as set ft=actionscript
au! BufRead,BufNewFile *.json set filetype=json

set pastetoggle=<F10>

" Make navigation behave more sensible when 'wrap' is set.
" Taken from <http://www.vim.org/tips/tip.php?tip_id=38>
"map <up>   gk
"map <down> gj
"map <home> g<home>
"map <end>  g<end>
"imap <up>   <C-o>gk
"imap <down> <C-o>gj
"imap <home> <C-o>g<home>
"imap <end>  <C-o>g<end>

filetype indent on

" disable syntax highlighting in diff mode
if &diff
	"set columns=151
	"map :q :qa
	syn off
endif

" automatically load the GUI when run under X11
if has('gui') && $DISPLAY != ''
	gui
endif

"set listchars=eol:␤,tab:␉\ ,trail:␠,extends:>,precedes:<,nbsp:␠
"set list

"autocmd BufWritePost,FileWritePost /home/sam/src/occ/data/occ.py silent !ln -sf <afile>:p ~/.openoffice.org2/user/Scripts/python/occ.py
au BufWritePost,FileWritePost *.scss silent !sass --update <afile>:p:h/styles.scss

if &term =~ "screen"
	set ttymouse=xterm2
endif

" highlight TrailWhitespace ctermbg=red guibg=#ffdecd
" match TrailWhitespace /\s\+$\| \+\ze\t\|[^\t]\zs\t\+/
"autocmd Syntax * syn match TrailWhitespace /\s\+$\| \+\ze\t/
"
nnoremap <silent> <F2> :tabprev<CR>
nnoremap <silent> <F3> :tebnext<CR>

let notabs = 1
nnoremap <silent> <F8> :let notabs=!notabs<Bar>:if notabs<Bar>:tabo<Bar>:else<Bar>:tab ball<Bar>:tabn<Bar>:endif<CR>

nmap <F8> :TagbarToggle<CR>
nmap <F5> :Texplore<CR>
nmap <F10> :Errors<CR>

" autoopen tag bar for lua
if has("gui_running")
	if !&diff
    	autocmd BufEnter *.lua nested TagbarOpen
    	autocmd BufEnter *.py nested TagbarOpen
    	autocmd BufEnter *.js nested TagbarOpen
	end
endif

au BufRead,BufNewFile *.md set ft=markdown
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

au BufNewFile,BufRead .bashrc*,bashrc,bash.bashrc,.bash_profile*,bash_profile,bash_logout,.bash_aliases,bash_aliases,.bash_logout*,*.bash,*.ebuild call dist#ft#SetFileTypeSH("bash")
au BufNewFile,BufRead *jshintrc,*jscsrc call dist#ft#SetFileTypeSH("json")
au BufNewFile,BufRead *gitconfig call dist#ft#SetFileTypeSH("gitconfig")

if filereadable('.jshintrc')
  let g:syntastic_javascript_jshint_args = '--config .jshintrc'
else
  let g:syntastic_javascript_jshint_args = '--config ~/.jshintrc'
endif

let g:mustache_abbreviations = 1
