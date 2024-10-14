-- this is the most important setting
require("config.lazy")

-- this is the most important setting
vim.cmd('set langmap=jh,kj,lk,öl')

-- this is the second most important setting
vim.api.nvim_set_keymap("i", "JK", "<Esc>", { noremap = true, silent = true })

-- set leader to space
vim.g.mapleader=" "

-- make window management a little more comfortable
vim.api.nvim_set_keymap("n", "<leader>w", "<C-w>", { noremap = true, silent = true })
vim.cmd('set langmap=jh,kj,lk,öl')

-- this is the second most important setting
vim.api.nvim_set_keymap("i", "JK", "<Esc>", { noremap = true, silent = true })

-- set leader to space
vim.g.mapleader=" "

-- make window management a little more comfortable
vim.api.nvim_set_keymap("n", "<leader>w", "<C-w>", { noremap = true, silent = true })

-- open netrw on pv
vim.api.nvim_set_keymap("n", "<leader>pv", "<Cmd>Explore<CR>", { noremap = true, silent = true })
