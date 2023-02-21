local wk = require('which-key')

-- Bindings for window management
wk.register({
  ["<leader>"] = {
    w = {
      name = "window",
      h = { "<cmd> wincmd k<cr>", "Go to right window" },
      l = { "<cmd> wincmd h<cr>", "Go to left window"},
      j = { "<cmd> wincmd j<cr>", "Go to bottom window" },
      k = { "<cmd> wincmd k<cr>", "Go to upper window"},
    },
  },
})


-- Bindings for buffer management
wk.register({
  ["<leader>"] = {
    -- b for buffer
    b = {
      name = "buffer",
      N = { "<cmd> enew <cr>", "Create new scratch buffer" },
      d = { "<cmd> confirm bdelete <cr>", "Delete current buffer" },
      s = { "<cmd> write <cr>", "Save current buffer" },
      n = { "<cmd> bnext <cr>", "Go to next buffer" },
      p = { "<cmd> bprevious <cr>", "Go to previous buffer" },
    },
  },

  -- shortcuts for changing buffers easily
  ["]"] = {
    b = { "<cmd> bnext <cr>", "Go to next buffer" },
  },
  ["["] = {
    b = { "<cmd> bprevious <cr>", "Go to previous buffer" },
  },
})

-- Bindings for file management
wk.register({
  ["<leader>"] = {
    f = {
      name = "file",
      f = { "<cmd> lua require('telescope.builtin').find_files() <cr>", "Find file" },
      r = { "<cmd> lua require'telescope.builtin'.find_files(require('telescope.themes').get_ivy({})) <cr>", "Recent files" },
    },
  },
})
