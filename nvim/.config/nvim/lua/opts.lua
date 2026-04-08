local opt = vim.opt
local cmd = vim.cmd

vim.g.mapleader = " "
vim.g.maplocalleader = " //"

opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.autoindent = true
opt.shiftround = true

opt.scrolloff = 10
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.termguicolors = true

opt.wrap = false
opt.ignorecase = true
opt.swapfile = false

opt.undodir = os.getenv("XDG_CACHE_HOME") .. "/.nvim/undodir"
opt.undofile = true

opt.signcolumn = "yes:1"

opt.winborder = "rounded"

opt.termguicolors = true
opt.cursorline = true

cmd.colorscheme("catppuccin")

cmd.filetype("plugin indent on")
