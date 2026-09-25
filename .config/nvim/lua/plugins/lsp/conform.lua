return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
        {
            "<leader>=",
            function()
                require("conform").format({ async = true, lsp_format = "fallback" })
            end,
            mode = { "n", "v" },
            desc = "Format buffer",
        },
    },
    opts = {
        quiet = true,
        default_format_opts = {
            timeout_ms = 1000,
            async = true,
            quiet = true,
            lsp_format = "fallback",
        },
        format_on_save = {
            async = false,
            quiet = true,
            lsp_format = "fallback",
        },
        formatters_by_ft = {
            lua = { "stylua" },
            fish = { "fish_indent" },
            sh = { "shfmt" },
            c = { "clang-format" },
            cpp = { "clang-format" },
        },
        formatters = {
            injected = { options = { ignore_errors = true, }, },
            ["clang-format"] = {
                prepend_args = { "-style={BasedOnStyle: llvm, IndentWidth: 4, TabWidth: 4}" },
            }
        },
    },
}
