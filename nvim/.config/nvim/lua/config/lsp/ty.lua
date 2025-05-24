vim.lsp.config['ty'] = {
    -- Command and arguments to start the server.
    cmd = { "ty", "server" },

    -- Filetypes to automatically attach to.
    filetypes = { 'python' },

    -- Sets the "root directory" to the parent directory of the file in the
    -- current buffer that contains either a ".luarc.json" or a
    -- ".luarc.jsonc" file. Files that share a root directory will reuse
    -- the connection to the same LSP server.
    root_markers = { "ty.toml", "pyproject.toml", ".git" }

    -- Specific settings to send to the server. The schema for this is
    -- defined by the server. For example the schema for lua-language-server
    -- can be found here https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
    -- settings = {
    --     Lua = {
    --         runtime = {
    --             version = 'LuaJIT',
    --         }
    --     }
    -- }
}
