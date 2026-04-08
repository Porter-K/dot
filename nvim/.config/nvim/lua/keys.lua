local key = vim.keymap

-- Switch panes
key.set("n", "<c-h>", "<cmd><C-a>TmuxNavigateLeft<cr>")
key.set("n", "<c-j>", "<cmd><C-a>TmuxNavigateDown<cr>")
key.set("n", "<c-k>", "<cmd><C-a>TmuxNavigateUp<cr>")
key.set("n", "<c-l>", "<cmd><C-a>TmuxNavigateRight<cr>")
key.set("n", "<c-\\>", "<cmd><C-a>TmuxNavigatePrevious<cr>")

local fzf = require("fzf-lua")
key.set("n", "<Leader>ff", fzf.files, { desc = "Open file finder" })
key.set("n", "<Leader>fg", fzf.grep, { desc = "Grep files" })
key.set("n", "<Leader>fa", fzf.builtin, { desc = "Search builtin commands" })
key.set(
    "n",
    "<Leader>fd",
    fzf.diagnostics_document,
    { desc = "View document diagnostics" }
)
key.set(
    "n",
    "<Leader>fw",
    fzf.diagnostics_workspace,
    { desc = "View workspace diagnostics" }
)
key.set("n", "<Leader>fq", fzf.quickfix, { desc = "View quickfixes" })
key.set("n", "<Leader>fu", fzf.undotree, { desc = "View undo tree" })

local conform = require("conform")
key.set("n", "<Leader>cf", function()
    conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
    })
end, { desc = "Format" })

key.set(
    "n",
    "yc",
    "yy<cmd>normal gcc<CR>p",
    { noremap = true, desc = "Duplicate line and comment original" }
)

key.set(
    "n",
    "<leader>do",
    vim.diagnostic.open_float,
    { noremap = true, silent = true, desc = "Open diagnostic float" }
)
key.set("n", "<leader>dp", function()
    vim.diagnostic.jump({ count = -1 })
end, { noremap = true, silent = true, desc = "Jump to previous diagnostic" })
key.set("n", "<leader>dn", function()
    vim.diagnostic.jump({ count = 1 })
end, { noremap = true, silent = true, desc = "Jump to next diagnostic" })
key.set(
    "n",
    "<leader>ds",
    vim.diagnostic.setloclist,
    { noremap = true, silent = true, desc = "View diagnostics" }
)
