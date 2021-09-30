local map = vim.api.nvim_set_keymap
local cmd = vim.cmd

-- map the leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' '  -- 'vim.g' sets global variables


options = { noremap = true }
map('n', '<leader><esc>', ':nohlsearch<cr>', options)
map('n', '<leader>n', ':bnext<cr>', options)
map('n', '<leader>p', ':bprev<cr>', options)
map('n', '<C-p>', ':Telescope find_files<cr>', options)

-- Ack
vim.g.ackprg = 'rg --vimgrep --type-not sql --smart-case'
vim.g.ack_autoclose = 1
vim.g.ack_use_cword_for_empty_search = 1
map('n', '<leader>s', ':Ack!<Space>', options)
map('n', '<leader>l', ':AckWindow!<Space>', options)
cmd(':command! Ack Ack!')

