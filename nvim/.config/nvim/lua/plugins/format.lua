return {
	{
		"mhartington/formatter.nvim",
		cmd = { "Format", "FormatWrite", "FormatLock", "FormatWriteLock" },
		keys = { { "<leader>cf", "<cmd>Format<CR>", "n" } },
		config = function()
			-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
			require("formatter").setup({
				logging = true, -- Enable or disable logging
				log_level = vim.log.levels.WARN, -- Set the log level
				filetype = {
					lua = {
						require("formatter.filetypes.lua").stylua,
					},
					typescript = {
						require("formatter.filetypes.typescript").prettierd,
					},
					javascript = {
						require("formatter.filetypes.javascript").prettierd,
					},
					typescriptreact = {
						require("formatter.filetypes.typescriptreact").prettierd,
					},
					javascriptreact = {
						require("formatter.filetypes.javascriptreact").prettierd,
					},
					java = {
						require("formatter.filetypes.java").google_java_format,
					},
					css = {
						require("formatter.filetypes.css").prettierd,
					},
					["*"] = {
						require("formatter.filetypes.any").remove_trailing_whitespace,
					},
				},
			})
		end,
	},
}
