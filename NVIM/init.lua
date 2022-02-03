-- Enabling modules
require('plugins')
require('modules.lualineconfig')
require('modules.cmpconfig')
require('modules.autopairconfig')
require('modules.general')
require('modules.whichkey')
require('modules.dashboard')

-- Enable a theme
require('themes.Nord')

-- Some configs
local lspserver = require('lspconfig')

lspserver.clangd.setup {
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}

lspserver.pyright.setup {
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}

vim.opt.foldenable = false

