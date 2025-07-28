vim.keymap.set('i', "jj", "<esc>")
vim.keymap.set("n", "g/", ":noh<CR>") -- Clear search query

-- Switch panes
vim.keymap.set("n", "<Ctrl>h", ":wincmd h<CR>")
vim.keymap.set("n", "<Ctrl>j", ":wincmd j<CR>")
vim.keymap.set("n", "<Ctrl>k", ":wincmd k<CR>")
vim.keymap.set("n", "<Ctrl>l", ":wincmd l<CR>")

-- terminal
vim.keymap.set("t", "<C-h>", "<cmd>wincmd h<CR>")
vim.keymap.set("t", "<C-j>", "<cmd>wincmd j<CR>")
vim.keymap.set("t", "<C-k>", "<cmd>wincmd k<CR>")
vim.keymap.set("t", "<C-l>", "<cmd>wincmd l<CR>")

-- Move around in insert mode
vim.keymap.set("i", "<C-h>", "<C-o>h")
vim.keymap.set("i", "<C-j>", "<C-o>j")
vim.keymap.set("i", "<C-k>", "<C-o>k")
vim.keymap.set("i", "<C-l>", "<C-o>l")

local fzf = require("fzf-lua")
vim.keymap.set("n", "<Leader>ff", fzf.files)
vim.keymap.set("n", "<Leader>fg", fzf.grep)
vim.keymap.set("n", "<Leader>fa", fzf.builtin)
