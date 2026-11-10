return {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = "nvim-treesitter/nvim-treesitter",
    -- config = function()
    --     vim.keymap.set("n", "",
    --         function()
    --             require("treesitter-context").go_to_context(vim.v.count1)
    --         end, {
    --             silent = true
    --         }
    --     )
    -- end,
    opts = {
        enable = true,
        separator = "_",
        min_window_height = 32,
    },
}
