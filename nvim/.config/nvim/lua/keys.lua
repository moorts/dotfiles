-- Keybinding Configuration

vim.g.mapleader = " "

-- Splits
vim.keymap.set('n', '<leader>v', '<cmd>vsplit<cr>')
vim.keymap.set('n', '<leader>h', '<cmd>split<cr>')

vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')


-- Buffer Navigation
vim.keymap.set('n', '<C-]>', '<cmd>bnext<cr>')

-- Execute Code
vim.keymap.set('n', '<leader>cp', '<cmd>!python %<cr>')
