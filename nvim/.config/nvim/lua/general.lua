local set = vim.opt

-- Use system clipboard
set.clipboard = "unnamedplus"

-- Indentation Settings
set.autoindent = true

set.expandtab = true
set.shiftwidth = 4
set.tabstop = 4

-- Line numbers
set.number = true
set.relativenumber = true

-- Remove gap
set.showmode = false

-- Color scheme
set.termguicolors = true

require('ayu').setup({
    mirage = false,
    overrides = {},
})
require('ayu').colorscheme()

