-- used to disable because i'm using nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

-- require("dkimot.rtp")
require("dkimot.set")
require("dkimot.packer")
require("dkimot.colors")
require("dkimot.keybinds")
-- require("dkimot.neogit")
-- require("dkimot.debugger")
require("dkimot.lsp")
require("dkimot.treesitter")
require("dkimot.projectnav")

require("dkimot.rayxgo")

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_windsize = 25

local function open_nvim_tree()
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
