vim.loader.enable(true)
vim.pack.add({
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/lewis6991/gitsigns.nvim" },
    { src = "https://github.com/folke/which-key.nvim" },
    { src = "https://github.com/echasnovski/mini.icons" },
    { src = "https://github.com/ibhagwan/fzf-lua" },
    {
        src = "https://github.com/nvim-treesitter/nvim-treesitter",
        version = "main",
    },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter-context" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects" },
    { src = "https://github.com/L3MON4D3/LuaSnip" },
    {
        src = "https://github.com/saghen/blink.cmp",
        version = vim.version.range("v1.x"),
        hooks = {
            post_install = function(params)
                vim.notify("Building blink.cmp", vim.log.levels.INFO)
                local obj = vim.system(
                    { "cargo", "build", "--release" },
                    { cwd = params.path }
                ):wait()
                if obj.code == 0 then
                    vim.notify("Building blink.cmp done", vim.log.levels.INFO)
                else
                    vim.notify(
                        "Building blink.cmp failed",
                        vim.log.levels.ERROR
                    )
                end
            end,
        },
    },
    { src = "https://github.com/stevearc/conform.nvim" },
    { src = "https://github.com/christoomey/vim-tmux-navigator" },
    vim.pack.add({
        {
            src = "https://github.com/kylechui/nvim-surround",
            version = vim.version.range("4.x"),
        },
    }),
})
