local nnoremap = require('dkimot.keymap').nnoremap

-- ===== window management =====
nnoremap("<Leader>h", ":wincmd h<CR>")
nnoremap("<Leader>j", ":wincmd j<CR>")
nnoremap("<Leader>k", ":wincmd k<CR>")
nnoremap("<Leader>l", ":wincmd l<CR>")

-- ===== project navigation =====
local tel_builtin = require('telescope.builtin')
nnoremap("<leader>ff", tel_builtin.find_files, {})
nnoremap("<leader>fg", tel_builtin.live_grep, {})
nnoremap("<leader>fb", tel_builtin.buffers, {})
nnoremap("<leader>fh", tel_builtin.help_tags, {})

nnoremap("<leader>n", ":NvimTreeFindFile<CR>")

-- ===== hop =====
nnoremap("<leader><leader>b", "<cmd>HopWordBC<CR>")
nnoremap("<leader><leader>w", "<cmd>HopWordAC<CR>")
nnoremap("<leader><leader>j", "<cmd>HopLineAC<CR>")
nnoremap("<leader><leader>k", "<cmd>HopLineBC<CR>")

-- ===== undotree =====
nnoremap("<Leader>u", ":UndotreeToggle<CR>")

-- ===== buffer management =====
-- https://github.com/jeetsukumaran/vim-buffergator#summary
-- 
-- Use <Leader>b (typically: \b) to open a window listing all buffers. In this window, you can use normal movement keys to select a buffer and then:
-- <ENTER> to edit the selected buffer in the previous window
-- -- <C-V> to edit the selected buffer in a new vertical split
-- -- <C-S> to edit the selected buffer in a new horizontal split
-- -- <C-T> to edit the selected buffer in a new tab page
-- -- Use gb (or <M-b>) and gB (or <M-S-b>) to flip through the most-recently used buffer stack without opening the buffer listing "drawer".
-- Use <Leader><LEFT>, <Leader><UP>, <Leader><RIGHT>, <Leader><DOWN> to split a new window left, up, right, or down, respectively, and edit the previous MRU buffer there.
nnoremap("<Leader>[", ":bprev<CR>")
nnoremap("<Leader>]", ":bnext<CR>")

-- ===== cmp keymap =====
--
-- Autocompletion keybindings
-- https://github.com/VonHeikemen/lsp-zero.nvim#autocompletion
--
-- <Enter>: Confirms selection.
-- <Up>: Navigate to previous item on the list.
-- <Down>: Navigate to the next item on the list.
-- <Ctrl-u>: Scroll up in the item's documentation.
-- <Ctrl-f>: Scroll down in the item's documentation.
-- <Ctrl-e>: Toggles the completion.
-- <Ctrl-d>: Go to the next placeholder in the snippet.
-- <Ctrl-b>: Go to the previous placeholder in the snippet.
-- <Tab>: Enables completion when the cursor is inside a word. If the completion menu is visible it will navigate to the next item in the list.
-- <S-Tab>: When the completion menu is visible navigate to the previous item in the list.
--
-- ===== LSP Keybindings =====
-- https://github.com/VonHeikemen/lsp-zero.nvim#lsp
--
-- K: Displays hover information about the symbol under the cursor in a floating window. See :help vim.lsp.buf.hover().
-- gd: Jumps to the definition of the symbol under the cursor. See :help vim.lsp.buf.definition().
-- gD: Jumps to the declaration of the symbol under the cursor. Some servers don't implement this feature. See :help vim.lsp.buf.declaration().
-- gi: Lists all the implementations for the symbol under the cursor in the quickfix window. See :help vim.lsp.buf.implementation().
-- go: Jumps to the definition of the type of the symbol under the cursor. See :help vim.lsp.buf.type_definition().
-- gr: Lists all the references to the symbol under the cursor in the quickfix window. See :help vim.lsp.buf.references().
-- <Ctrl-k>: Displays signature information about the symbol under the cursor in a floating window. See :help vim.lsp.buf.signature_help(). If a mapping already exists for this key this function is not bound.
-- <F2>: Renames all references to the symbol under the cursor. See :help vim.lsp.buf.rename().
-- <F4>: Selects a code action available at the current cursor position. See :help vim.lsp.buf.code_action().
