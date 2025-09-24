local key = vim.keymap
key.set("i", "jj", "<esc>")
key.set("n", "g/", ":noh<CR>") -- Clear search query

key.set("t", "<A-j>", "<Down>")
key.set("t", "<A-k>", "<Up>")

-- Switch panes
key.set("n", "<Ctrl>h", ":wincmd h<CR>")
key.set("n", "<Ctrl>j", ":wincmd j<CR>")
key.set("n", "<Ctrl>k", ":wincmd k<CR>")
key.set("n", "<Ctrl>l", ":wincmd l<CR>")

-- terminal
key.set("t", "<C-h>", "<cmd>wincmd h<CR>")
key.set("t", "<C-j>", "<cmd>wincmd j<CR>")
key.set("t", "<C-k>", "<cmd>wincmd k<CR>")
key.set("t", "<C-l>", "<cmd>wincmd l<CR>")

-- Move around in insert mode
key.set("i", "<C-h>", "<C-o>h")
key.set("i", "<C-j>", "<C-o>j")
key.set("i", "<C-k>", "<C-o>k")
key.set("i", "<C-l>", "<C-o>l")

local fzf = require("fzf-lua")
key.set("n", "<Leader>ff", fzf.files)
key.set("n", "<Leader>fg", fzf.grep)
key.set("n", "<Leader>fa", fzf.builtin)
