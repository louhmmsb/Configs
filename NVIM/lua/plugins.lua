-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]
-- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632 merged
-- vim._update_package_paths()

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim' -- https://github.com/wbthomason/packer.nvim

  -- Simple plugins can be specified as strings
  use 'hoob3rt/lualine.nvim'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }
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
  use 'shaunsingh/nord.nvim'

  -- Which-Key
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        -- Config (or not)
      }
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

end)
