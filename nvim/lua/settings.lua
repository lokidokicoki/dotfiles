local o = vim.o
local ol = vim.opt_local
local og = vim.opt_global
local w = vim.wo
local b = vim.bo

--- general settings ---
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
o.termguicolors = true

-- display filename and path in window title
o.title = true
o.showmatch = true
o.mouse = "a"
o.mousemodel = "popup_setpos"
o.splitbelow = true
o.splitright = true

-- do not turn tabs into spaces
b.expandtab = false
b.shiftwidth = 4
b.tabstop = 4
b.softtabstop = 4

-- do not wrap long lines
w.wrap = false

-- break long lines
w.linebreak = true

b.modeline = true

-- show line numbers
w.number = true

-- use the visualbell
o.visualbell = true

vim.cmd([[hi clear SignColumn]])

-- set color sheme
o.background = "dark"
vim.cmd([[colorscheme onedark]])

-- define list characters
vim.opt.listchars = { tab = ">-", trail = "_", extends = ">", precedes = "<", nbsp = "~", space = "." }
w.list = true

b.spelllang = "en_gb"
ol.spell = true
o.spell = false

-- disable syntax highlighting in diff mode
if vim.api.nvim_win_get_option(0, "diff") then
	b.syntax = false
end

vim.api.nvim_create_user_command("FormatJSON", "%!python3 -m json.tool", {})

--[[
-- =================
-- Filetype settings
-- =================

-- stop vim making backups for crontab
autocmd filetype crontab setlocal nobackup nowritebackup

autocmd FileType debchangelog setlocal expandtab

--don't use tabs in JavaScript files
autocmd FileType javascript setlocal expandtab

autocmd filetypedetect BufNewFile,BufRead COMMIT_EDITMSG set ft=gitcommit

--actionscript, not atlas
autocmd! filetypedetect BufNewFile,BufRead *.as
autocmd  filetypedetect BufNewFile,BufRead *.as set ft=actionscript
au! BufRead,BufNewFile *.json set filetype=json


au BufWritePost,FileWritePost *.scss silent !sass --update <afile>:p:h/styles.scss

au BufRead,BufNewFile *.md set ft=markdown
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

au BufNewFile,BufRead .bashrc*,bashrc,bash.bashrc,.bash_profile*,bash_profile,bash_logout,.bash_aliases,bash_aliases,.bash_logout*,*.bash,*.ebuild call dist#ft#SetFileTypeSH("bash")
au BufNewFile,BufRead *jshintrc,*jscsrc call dist#ft#SetFileTypeSH("json")
au BufNewFile,BufRead *gitconfig call dist#ft#SetFileTypeSH("gitconfig")


]]
--
