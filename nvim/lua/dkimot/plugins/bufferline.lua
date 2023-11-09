return {
  "akinsho/bufferline.nvim",
  event = { "BufReadPre", "BufNewFile" },
  keys = {
    { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
    { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
    { "<S-h>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Previous buffer" },
    { "<S-l>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next buffer" },
    { "<leader>x", "<Cmd>bd<CR>", desc = "Close current buffer" },
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = { -- require("bufferline").setup(opts)
    options = {
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local icon = level:match "error" and " " or " "
        return " " .. icon .. count
      end,
      offsets = {
        {
          highlight = "Directory",
          text_align = "left",
        },
      },
    },
  },
}
