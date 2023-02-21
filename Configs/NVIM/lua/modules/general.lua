local set = vim.opt
local map = vim.api.nvim_set_keymap

set.relativenumber = true
set.cursorline = true

-- Mapping keybindings
vim.g.mapleader = ' '
vim.g.maplocalleader = 'm'
-- map('n', '<Leader>w', '<C-w>', {noremap = true})
