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
vim.keymap.set('n', '<leader>fm', builtin.help_tags, { desc = 'Telescope help tags' })

local harpoon = require("harpoon")
vim.keymap.set("n", "<leader>fa", function() harpoon:list():add() end, { desc = 'Add to harpoon' })
vim.keymap.set("n", "<leader>fe", "harpoon.ui:toggle_quick_menu(harpoon:list()) end", {desc = 'toggle harpoon quick menu'})

vim.keymap.set("n", "<leader>fu", "harpoon:list():select(1) end", {desc = 'harpoon 1'})
vim.keymap.set("n", "<leader>fi", "harpoon:list():select(2) end", {desc = 'harpoon 2'})
vim.keymap.set("n", "<leader>fo", "harpoon:list():select(3) end", {desc = 'harpoon 3'})
vim.keymap.set("n", "<leader>fp", "harpoon:list():select(4) end", {desc = 'harpoon 4'})

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>fh", function() harpoon:list():prev() end, {desc = 'harpoon prev' })
vim.keymap.set("n", "<leader>fl", function() harpoon:list():next() end, {desc = 'harpoon next' })
