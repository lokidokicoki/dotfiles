local fn = vim.fn
local cmd = vim.cmd

--================
--NERDtree settings
--================
require('nvim-tree').setup()
if vim.api.nvim_win_get_option(0, 'diff') then
end


--[[
if !&diff
	let NERDTreeShowHidden=1
	autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | endif
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
end

]]--
