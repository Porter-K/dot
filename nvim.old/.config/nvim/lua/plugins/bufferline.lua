return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	version = "*",
	dependencies = { "echasnovski/mini.icons" },
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				persist_buffer_sort = true,
				hover = {
					enabled = true,
					delay = 200,
					reveal = { "close" },
				},
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						highlight = "Directory",
						separator = true,
					},
				},
			},
		})

		local map = vim.keymap.set
		local opts = { noremap = true, silent = true }

		map("n", "<A-h>", "<cmd>BufferLineCyclePrev<cr>", opts)
		map("n", "<A-l>", "<cmd>BufferLineCycleNext<cr>", opts)
	end,
}
