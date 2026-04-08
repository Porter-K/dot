require("nvim-surround").setup({
    surrounds = {
        ["f"] = {
            add = function()
                local ts = require("nvim-surround.treesitter")
                return ts.get_selection("function")
            end,
        },
    },
})
