return {
    {
        "williamboman/mason.nvim",
        cmd = { "Mason", "MasonInstall", "MasonUpdate" },
        opts = {}
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = { automatic_installation = true, }
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        cmd = { "MasonToolsInstall" },
        dependencies = { "williamboman/mason.nvim" },
        opts = {
            ensure_installed = {
                -- Linter
                "htmlhint",
                "markdownlint",
                "eslint_d",

                -- Formatter
                "asmfmt",
                "clang-format",
                "prettier",
                "htmlbeautifier",
                "yamlfmt",
                "xmlformatter",

                -- Lsp servers
                "lua_ls",
                "ts_ls",
                "pyright",
                "jsonls",
                "html",
                "cssls",
                "yamlls",
                "bashls",
                "clangd",
                -- "java_language_server",
                "jdtls",
                "marksman",
                "rust_analyzer",
                "wasm_language_tools",
            },
            auto_update = false,
            run_on_start = false,
        }
    }
}
