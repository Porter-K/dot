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

-- Rust
lsp.config["rust_analyzer"] = {
    cmd = { "rust-analyzer" },
    filetypes = { "rust" },
    root_markers = { ".git", "Cargo.toml", "Cargo.lock" },
    settings = {},
}
lsp.enable("rust_analyzer")

-- Python
lsp.config["ty"] = {
    cmd = { "ty", "server" },
    filetypes = { "python" },
    root_markers = {
        "ty.toml",
        "pyproject.toml",
        "setup.py",
        "setup.cfg",
        "requirements.txt",
        ".git",
    },
    settings = {},
}
lsp.enable("ty")

lsp.config["ruff"] = {
    cmd = { "ruff", "server" },
    filetypes = { "python" },
    root_markers = { "pyproject.toml", "ruff.toml", ".ruff.toml", ".git" },
    settings = {},
}
lsp.enable("ruff")

lsp.config["pyrefly"] = {
    cmd = { "pyrefly", "lsp" },
    filetypes = { "python" },
    root_markers = { "pyproject.toml", "ruff.toml", ".ruff.toml", ".git" },
    settings = {},
}
lsp.enable("pyrefly")

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
