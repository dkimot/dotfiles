return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- import mason
    local mason = require "mason"

    -- import mason-lspconfig
    local mason_lspconfig = require "mason-lspconfig"

    -- enable mason and configure icons
    mason.setup {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    }

    mason_lspconfig.setup {
      -- list of servers for mason to install
      ensure_installed = {
        "html",
        "cssls",
        "tailwindcss",
        "lua_ls",
        "marksman",
        "gopls",
        "emmet_ls",
        "prismals",
        "ruby_lsp",
        "rust_analyzer",
        "elixirls",
      },

      -- auto-install configured servers (with lspconfig)
      automatic_installation = true, -- not the same as ensure_installed
    }
  end,
}
