return {
    {
        'altermo/ultimate-autopair.nvim',
        event = { 'InsertEnter', 'CmdlineEnter' },
        branch = 'v0.6', -- stable branch
        opts = {
            space = {
                enable = true,
                check_box_html = true,
            },
            bs = {
                enable = true,
                overjumps = true,
                space = 'balance',
                indent_ignore = true,
            },
            cr = {
                enable = true,
                autoclose = true,
                autocomplete = true,
            },
            multiline = {
                enable = true,
            },
            config = {
                fastwrap = {
                    enable = true,
                    hop = true,
                },
            },
        },
    },
    {
        "RRethy/nvim-treesitter-endwise",
        event = "insertEnter",
    }
}
