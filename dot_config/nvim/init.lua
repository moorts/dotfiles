-- Load plugins
require('general')
require('keys')
require('auto')
require('lazy-setup')
require('digraphs')

local texnotes = require("texnotes")

vim.api.nvim_create_user_command("TexnotesEnable", texnotes.enable, {})
vim.api.nvim_create_user_command("TexnotesDisable", texnotes.disable, {})
vim.api.nvim_create_user_command("TexnotesToggle", texnotes.toggle, {})
-- require('statusline')
