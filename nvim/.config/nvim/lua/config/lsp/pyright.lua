vim.lsp.config("pyright", {
  cmd = { "pyright" },
  filetypes = { "python" },
  root_markers = {
    "pyproject.toml",
    "setup.py",
    "setup.cfg",
    "requirements.txt",
    "Pipfile",
    ".git",
    "__init__.py",
  },
  settings = {},
})
