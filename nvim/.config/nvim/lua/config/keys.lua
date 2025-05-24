vim.keymap.set('i', "jj", "<esc>")
vim.keymap.set("n", "g/", ":noh<CR>") -- Clear search query

-- Switch panes
vim.keymap.set("n", "<Ctrl>h", ":wincmd h<CR>")
vim.keymap.set("n", "<Ctrl>j", ":wincmd j<CR>")
vim.keymap.set("n", "<Ctrl>k", ":wincmd k<CR>")
vim.keymap.set("n", "<Ctrl>l", ":wincmd l<CR>")

-- Move around in insert mode
vim.keymap.set("i", "<C-h>", "<C-o>h")
vim.keymap.set("i", "<C-j>", "<C-o>j")
vim.keymap.set("i", "<C-k>", "<C-o>k")
vim.keymap.set("i", "<C-l>", "<C-o>l")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
