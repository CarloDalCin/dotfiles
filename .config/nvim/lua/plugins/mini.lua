return {
    -- surround
    {
        "echasnovski/mini.surround",
        enabled = false,
        version = '*',
        event = "VeryLazy",
        config = function()
            require("mini.surround").setup({
                mappings = {
                    add = "ys",
                    delete = "ds",
                    replace = "cs",
                    find = "",
                    find_left = "",
                    highlight = "",
                    update_n_lines = "",
                },
                search_method = 'cover_or_next',
                respect_selection_type = true,
            })
        end,
    },

    -- move
    {
        'echasnovski/mini.move',
        version = '*',
        config = function()
            require('mini.move').setup({
                mappings = {
                    -- visual
                    left = '<A-h>',
                    right = '<A-l>',
                    down = '<A-j>',
                    up = '<A-k>',
                    -- normal
                    line_left = '<A-h>',
                    line_right = '<A-l>',
                    line_down = '<A-j>',
                    line_up = '<A-k>',
                },
            })
        end
    },

    -- splitjoin
    {
        'echasnovski/mini.splitjoin',
        version = '*',
        config = function()
            require('mini.splitjoin').setup()
        end
    },
}
