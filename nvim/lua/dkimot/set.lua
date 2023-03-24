vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.hidden = true

vim.opt.errorbells = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.mouse = "a"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 5
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 1

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Having longer updatetime (default is 4000 ms) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50

-- Don't pass messages to |ins-completion-menu|.
-- vim.opt.shortmess:append("c")

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.g.buffergator_viewport_split_policy = "R"
