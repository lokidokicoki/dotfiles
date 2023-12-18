" --- general settings ---
syntax enable
syntax on

set title " display filename and path in window title
set hidden " allow for edited buffers that can be invisible

set nocompatible
set backspace=indent,eol,start

set directory=/var/tmp/

set mouse=a " enable mouse in all modes
set mousemodel=popup_setpos " make mouse behave like mac/windows/gnome

set splitbelow
set splitright

set hlsearch		" hilight search results

set showmatch		" show patching parentheses

set laststatus=2	" always display status line

set ruler " show ruler at max textwidth

set showcmd " show partial command in status line

set wildmenu " display possible choices when tab completing

" do not turn tabs into spaces
set noexpandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set nowrap " do not wrap long lines

set linebreak " break long lines

set modeline

set number " show line numbers

set visualbell " use the visualbell

hi clear SignColumn

" set color sheme
set background=dark
colorscheme onedark

" define list characters
set listchars=tab:>-,trail:_,extends:>,precedes:<,nbsp:~,space:.
set list

set display+=lastline

set spelllang=en_gb

setlocal spell
set nospell
set encoding=utf-8
set pastetoggle=<F10>

" disable syntax highlighting in diff mode
if &diff
	syn off
endif

" automatically load the GUI when run under X11
"if has('gui') && $DISPLAY != ''
if $TMUX_PANE == '' && has('gui') && $DISPLAY != ''
	gui
endif

if &term =~ "screen" && !has('nvim')
	set ttymouse=xterm2
endif

" hide toolbars, tearoff menu items and don't fork
set guioptions-=T
set guioptions-=t
set guioptions+=f

" choose font for gui, doesn't affect console version
if has ("win32")
	set guifont=DejaVu_Sans_Mono:h9
elseif has ("mac")
	set guifont=Source\ Code\ Pro:h12
else
	set guifont=Monospace\ 10
endif

" =================
" Filetype settings
" =================

" stop vim making backups for crontab
autocmd filetype crontab setlocal nobackup nowritebackup

autocmd FileType debchangelog setlocal expandtab

" don't use tabs in JavaScript files
autocmd FileType javascript setlocal expandtab

autocmd filetypedetect BufNewFile,BufRead COMMIT_EDITMSG set ft=gitcommit

" actionscript, not atlas
autocmd! filetypedetect BufNewFile,BufRead *.as
autocmd  filetypedetect BufNewFile,BufRead *.as set ft=actionscript
au! BufRead,BufNewFile *.json set filetype=json


au BufWritePost,FileWritePost *.scss silent !sass --update <afile>:p:h/styles.scss

au BufRead,BufNewFile *.md set ft=markdown
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

au BufNewFile,BufRead .bashrc*,bashrc,bash.bashrc,.bash_profile*,bash_profile,bash_logout,.bash_aliases,bash_aliases,.bash_logout*,*.bash,*.ebuild call dist#ft#SetFileTypeSH("bash")
au BufNewFile,BufRead *jshintrc,*jscsrc call dist#ft#SetFileTypeSH("json")
au BufNewFile,BufRead *gitconfig call dist#ft#SetFileTypeSH("gitconfig")


com! FormatJSON %!python3 -m json.tool
