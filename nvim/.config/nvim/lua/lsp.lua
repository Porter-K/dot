local lsp = vim.lsp

-- Lua
lsp.config["lua_ls"] = {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { { ".luarc.json", ".luarc.jsonc" }, ".git" },
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
        },
    },
}
lsp.enable("lua_ls")

-- Zig
lsp.config["zls"] = {
    cmd = { "zls" },
    filetypes = { "zig" },
    root_markers = { ".git", "build.zig" },
    settings = {},
}
lsp.enable("zls")

-- Python
lsp.config["ty"] = {
    cmd = { "ty", "server" },
    filetypes = { "python" },
    root_markers = { "ty.toml", "pyproject.toml", ".git" },
    settings = {},
}
lsp.enable("ty")

lsp.config["ruff"] = {
    cmd = { "ruff" },
    filetypes = { "python" },
    root_markers = { ".git", "pyproject.toml" },
    settings = {},
}
lsp.enable("ruff")

lsp.config["pylsp"] = {
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
lsp.enable("pylsp")

lsp.config["pyright"] = {
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
}
lsp.enable("pyright")

-- C/C++
lsp.config["clang"] = {
    cmd = { "clangd" },
    filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
    root_markers = {
        ".clangd",
        ".clang-tidy",
        ".clang-format",
        "compile_commands.json",
        "compile_flags.txt",
        "configure.ac",
        ".git",
    },
    settings = {},
}
lsp.enable("clang")
