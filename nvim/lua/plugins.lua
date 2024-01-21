local fn = vim.fn
local cmd = vim.cmd

-- vim-python-virtualenv tweaks
vim.g.python3_host_prog = "/usr/bin/python3"

--================
--nvim-tree settings
--================
require("nvim-tree").setup({
	open_on_tab = true,
})

if vim.api.nvim_win_get_option(0, "diff") then
	print("hello from lua")
else
	cmd([[NvimTreeOpen]])

	cmd([[autocmd BufEnter * nested :TagbarOpen]])
end

-- airline settings
vim.g.airline_powerline_fonts = true
vim.g["airline#extensions#tabline#enabled"] = true -- Enable the list of buffers
vim.g["airline#extensions#tabline#fnamemod"] = ":t"

--[[
if !&diff
	let NERDTreeShowHidden=1
	autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | endif
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
end

]]
--

-- gutentags
vim.g.gutentags_cache_dir = vim.fn.expand("$HOME/.cache/gutentags")
cmd("let g:gutentags_file_list_command = { 'markers': { '.git': 'git ls-files', }, }")

-- ================
-- ALE settings apllied to all files
-- ================
vim.g.ale_fix_on_save = true
vim.g.ale_completion_enabled = true
cmd("let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}")

-- ================
-- Markdown settings
-- ================
vim.g.vim_markdown_folding_disabled = true
