local map = vim.api.nvim_set_keymap

-- cycle between active buffers
options = { noremap = true, silent = true}
map('n', '<F2>', ':bprevious<CR>', options)
map('n', '<F3>', ':bnext<CR>', options)
map('n', '<F6>', ':BufExplorerHorizontalSplit<CR>', options)

-- Close the current buffer and move to the previous one
map('n', '<leader>bq', ':bp <BAR> bd #<CR>', {})
