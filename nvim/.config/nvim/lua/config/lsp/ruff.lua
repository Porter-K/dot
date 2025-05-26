vim.lsp.config['ruff'] = {
    -- Command and arguments to start the server.
    cmd = { 'ruff' },

    -- Filetypes to automatically attach to.
    filetypes = { 'python' },

    root_markers = { '.git', 'pyproject.toml' },

    settings = { },
}
