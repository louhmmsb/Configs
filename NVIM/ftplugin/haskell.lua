require('modules.haskellutil')

local set = vim.opt
local wk = require('which-key')

set.tabstop = 4
set.shiftwidth = 4
set.expandtab = true

wk.register({
  ["<localleader>"] = {
    name = "local",
    r = { 
      name = 'refactor',
      f = { '<cmd> %!hlint - --refactor <cr>', "Refactor file" },
      p = { function() local row, column = unpack(vim.api.nvim_win_get_cursor(0)) local c = '%!hlint - --refactor --refactor-options="--pos=' .. row .. ',' .. column .. '"'  vim.api.nvim_command(c) vim.api.nvim_win_set_cursor(0, {row, column}) end , "Refactor on point" },
    }
  },
}, { prefix = "<leader>" })


