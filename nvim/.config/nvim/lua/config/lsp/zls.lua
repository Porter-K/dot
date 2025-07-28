vim.lsp.config["zls"] = {
  -- Command and arguments to start the server.
  cmd = { "zls" },
  -- Filetypes to automatically attach to.
  filetypes = { "zig" },
  root_markers = { ".git", "build.zig" },
  -- settings = {
  -- }
}
