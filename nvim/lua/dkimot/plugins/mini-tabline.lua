return {
  "echasnovski/mini.tabline",
  version = "*",
  config = true,
  event = { "BufReadPre", "BufNewFile" },
  keys = {
    { "<S-h>", "<Cmd>bprevious<CR>", desc = "Previous Buffer" },
    { "<S-l>", "<Cmd>bnext<CR>", desc = "Next Buffer" },
    { "<leader>x", "<Cmd>bd<CR>", desc = "Close current buffer" },
  },
}
