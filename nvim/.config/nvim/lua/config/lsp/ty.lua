vim.lsp.config["ty"] = {
  -- Command and arguments to start the server.
  cmd = { "ty", "server" },
  -- Filetypes to automatically attach to.
  filetypes = { "python" },
  root_markers = { "ty.toml", "pyproject.toml", ".git" },
  settings = {},
}
