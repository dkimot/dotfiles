local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.setup_nvim_cmp({
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp', keyword_length = 1},
    {name = 'buffer', keyword_length = 3},
    {name = 'luasnip', keyword_length = 2},
  }
})

lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
})

require('tabnine').setup({
  disable_auto_comment=true,
  accept_keymap="<C-Enter>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = {gui = "#808080", cterm = 244},
  execlude_filetypes = {"TelescopePrompt"}
})

local null_ls = require('null-ls')
local null_opts = lsp.build_options('null-ls', {})

null_ls.setup({
  on_attach = function(client, bufnr)
    null_opts.on_attach(client, bufnr)
    --- you can add more stuff here if you need it
  end,
  sources = {
    -- actions
    null_ls.builtins.code_actions.eslint_d,

    -- formatters
    null_ls.builtins.formatting.eslint_d,
    null_ls.builtins.formatting.erb_lint,
    null_ls.builtins.formatting.fixjson,
    null_ls.builtins.formatting.standardrb,
    null_ls.builtins.formatting.yamlfmt,
  }
})
