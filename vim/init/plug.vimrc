
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" plugins for Vundle to manage

" nerdtree
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'preservim/nerdcommenter'
Plugin 'preservim/nerdtree'

" custom color schemes
Plugin 'joshdick/onedark.vim'

Plugin 'vim-syntastic/syntastic.git'
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
Plugin 'preservim/tagbar'
Plugin 'marijnh/tern_for_vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'mattn/emmet-vim'
Plugin 'szw/vim-tags'
Plugin 'mtscout6/vim-tagbar-css'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'myhere/vim-nodejs-complete'
Plugin 'nono/jquery.vim'
Plugin 'othree/html5.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'dense-analysis/ale'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'sansyrox/vim-python-virtualenv'
Plugin 'sirver/ultisnips'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'rust-lang/rust.vim'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

