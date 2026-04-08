require("blink.cmp").setup({
    keymap = {
        preset = "default",
    },
    appearance = {
        nerd_font_variant = "mono",
    },
    snippets = { preset = "luasnip" },
    completion = {
        documentation = { auto_show = true },
        keyword = { range = "full" },
    },
    signature = { enabled = true },
    sources = {
        default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
})
