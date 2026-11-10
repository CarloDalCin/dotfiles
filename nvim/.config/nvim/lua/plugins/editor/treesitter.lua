return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    config = function()
        vim.api.nvim_create_autocmd("FileType", {
            callback = function()
                pcall(vim.treesitter.start)
            end,
        })

        local ts = require("nvim-treesitter")

        local wanted = {
              "c", "cpp", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline",
              "bash", "python", "javascript", "typescript", "tsx", "html", "css", "json", "yaml", "rust"
        }

        local installed = ts.get_installed()
        local missing = vim.iter(wanted):filter(function(p) return not vim.tbl_contains(installed, p) end):totable()
        if #missing > 0 then
            ts.install(missing)
        end
    end,
}
