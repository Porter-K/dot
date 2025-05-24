return {
	{
		"christoomey/vim-tmux-navigator",
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
			"TmuxNavigatePrevious",
			"TmuxNavigatorProcessList",
		},
		keys = {
			{ "<c-h>", "<cmd><C-a>TmuxNavigateLeft<cr>" },
			{ "<c-j>", "<cmd><C-a>TmuxNavigateDown<cr>" },
			{ "<c-k>", "<cmd><C-a>TmuxNavigateUp<cr>" },
			{ "<c-l>", "<cmd><C-a>TmuxNavigateRight<cr>" },
			{ "<c-\\>", "<cmd><C-a>TmuxNavigatePrevious<cr>" },
		},
	},
}
