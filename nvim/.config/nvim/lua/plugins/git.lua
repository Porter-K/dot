return {
	{
		"lewis6991/gitsigns.nvim",
		event = "VeryLazy",
		config = function()
			require("gitsigns").setup()
		end,
	},
	{
		"rhysd/conflict-marker.vim",
	},
	{
		"tpope/vim-fugitive",
    cmd = { "Git", },
	},
}
