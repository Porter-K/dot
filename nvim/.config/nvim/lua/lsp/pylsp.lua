return {
    cmd = { "pylsp" },
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
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = {
                    ignore = { "W391", "E203", "W503" },
                    maxLineLenght = 100,
                    enabled = true,
                },
                mypy = {
                    enabled = true,
                },
            },
        },
    },
}
