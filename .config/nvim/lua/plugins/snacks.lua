return {
    -- TODO: refine the configuration
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        bigfile = { enabled = true },
        indent = { enabled = true },
        notifier = { enabled = true, timeout = 4000 },
        lazygit = { enabled = true },
        quickfile = { enabled = true },
        statuscolumn = { enabled = true },
        words = { enabled = true },
        terminal = { enabled = true },
        explorer = {
            enabled = true,
            replace_netrw = true, -- Replace netrw with the snacks explorer
            trash = true,
        },
        picker = { enabled = true, },
    },
    keys = {
        -- terminal
        { "<leader>t",  function() Snacks.terminal.toggle() end,     desc = "Toggle terminal" },

        -- explorer
        { "<leader>e",  function() Snacks.explorer() end,            desc = "Toggle explorer" },

        -- picker
        { "<leader>ff", function() Snacks.picker.smart() end,        desc = "File picker" },
        { "<leader>fb", function() Snacks.picker.buffers() end,      desc = "Buffer picker" },

        { "<leader>sb", function() Snacks.picker.lines() end,        desc = "Buffer Lines" },
        { "<leader>sg", function() Snacks.picker.grep() end,         desc = "Grep" },
        { "<leader>sw", function() Snacks.picker.grep_word() end,    desc = "Visual selection or word", mode = { "n", "x" } },

        { "<leader>sM", function() Snacks.picker.man() end,          desc = "Man Pages" },
        { "<leader>sm", function() Snacks.picker.marks() end,        desc = "Marks" },
        { "<leader>sh", function() Snacks.picker.help() end,         desc = "Help Pages" },
        { "<leader>sr", function() Snacks.picker.registers() end,    desc = "Registers" },
        { "<leader>si", function() Snacks.picker.icons() end,        desc = "Icons" },

        { "<leader>th", function() Snacks.picker.colorschemes() end, desc = "Colorschemes" },

        --
    }
}
