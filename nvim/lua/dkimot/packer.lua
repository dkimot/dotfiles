return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")

  -- All the things
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'}, {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
  use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}

  use { 'jose-elias-alvarez/null-ls.nvim' }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use('nvim-tree/nvim-web-devicons')
  use({
    'mrjones2014/dash.nvim',
    run = 'make install',
  })

  use('gpanders/editorconfig.nvim')

  use("mbbill/undotree")
  use("jeetsukumaran/vim-buffergator")
  use("nvim-tree/nvim-tree.lua")
  use("tpope/vim-fugitive")

  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup()
    end
  }

  -- Language specific tooling
  use("tpope/vim-rails")
  use("ray-x/go.nvim")

  -- Colorscheme
  use("luisiacc/gruvbox-baby")

  use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
end)
