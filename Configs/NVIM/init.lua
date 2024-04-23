-- Enabling modules
require('plugins')
require('modules.lualineconfig')
require('modules.cmpconfig')
require('modules.autopairconfig')
require('modules.general')
require('modules.whichkey')
require('modules.dashboard')

-- Enable a theme
-- require('themes.Nord')
-- require('monokai').setup {}
-- require('monokai').setup { palette = require('monokai').pro }
require('monokai').setup { palette = require('monokai').soda }
-- require('monokai').setup { palette = require('monokai').ristretto }

-- Some configs
local lspserver = require('lspconfig')

lspserver.clangd.setup {
  capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
}

lspserver.pyright.setup {
  capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
}

lspserver.hls.setup {
  capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
}

vim.opt.foldenable = false

