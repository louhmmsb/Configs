-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]
-- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632 merged
-- vim._update_package_paths()
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- https://github.com/wbthomason/packer.nvim

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = 'nvim-tree/nvim-web-devicons',
  }

  -- Simple plugins can be specified as strings
  use 'neovim/nvim-lspconfig'

  -- Completions plugins: https://github.com/hrsh7th/nvim-cmp/
  use 'hrsh7th/cmp-nvim-lsp' 
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'

  -- PLugin for snippets and compatibilty with cmp: https://github.com/L3MON4D3/LuaSnip 
  use 'L3MON4D3/LuaSnip' 
  use 'saadparwaiz1/cmp_luasnip'

  -- Auto pair
  use 'windwp/nvim-autopairs' -- https://github.com/windwp/nvim-autopairs

  -- Colorscheme
  -- use 'shaunsingh/nord.nvim'
  use 'tanvirtin/monokai.nvim'

  -- Which-Key
  use {
    "folke/which-key.nvim",

    config = function()
       vim.o.timeout = true
       vim.o.timeoutlen = 300
    end
  }

  -- Fuzzy-Finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Dashboard
  use { 
    'glepnir/dashboard-nvim',
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)

