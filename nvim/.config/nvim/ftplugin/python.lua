local opt = vim.opt
opt.tabstop = 4
opt.shiftwidth = 4

vim.lsp.enable('ty')
vim.lsp.enable('ruff')
vim.lsp.enable('pyright')
vim.lsp.enable('pylsp')
