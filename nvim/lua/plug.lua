--[[
set nocompatible

if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs http://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
]]
--

local Plug = require("usermod.vimplug")

Plug.begin()

--[[
Plug('moll/vim-bbye')
Plug('junegunn/goyo.vim', {ft = 'markdown'})
Plug('echasnovski/mini.comment', {
  config = function()
    require('mini.comment').setup()
  end
})
]]
--
--nerdtree
--Plug('Xuyuanp/nerdtree-git-plugin')
--Plug('preservim/nerdcommenter')
--Plug('preservim/nerdtree')

--nvim-tree
Plug("nvim-tree/nvim-web-devicons")
Plug("nvim-tree/nvim-tree.lua")

--custom color schemes
Plug("vim-airline/vim-airline")
Plug("vim-airline/vim-airline-themes")
Plug("joshdick/onedark.vim")

--git plugins
Plug("mhinz/vim-signify")
Plug("tpope/vim-fugitive")

--tools
Plug("dense-analysis/ale")
Plug("docunext/closetag.vim")
Plug("lilydjwg/colorizer")
Plug("preservim/tagbar")
Plug("ludovicchabant/vim-gutentags")
Plug("marijnh/tern_for_vim")
Plug("mattn/emmet-vim")
Plug("pangloss/vim-javascript")
Plug("puremourning/vimspector")
Plug("sansyrox/vim-python-virtualenv")
Plug("sirver/ultisnips")
Plug("vim-scripts/greplace.vim")
Plug("jlanzarotta/bufexplorer")

--languages
Plug("editorconfig/editorconfig-vim")
Plug("hail2u/vim-css3-syntax")
Plug("honza/vim-snippets")
Plug("mtscout6/vim-tagbar-css")
Plug("myhere/vim-nodejs-complete")
Plug("nono/jquery.vim")
Plug("othree/html5.vim")
Plug("othree/javascript-libraries-syntax.vim")
Plug("rust-lang/rust.vim")
Plug("szw/vim-tags")
Plug("sheerun/vim-polyglot")

Plug.ends()
