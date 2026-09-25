return {
    'saghen/blink.cmp',
    version = '*',
    event = { 'InsertEnter', },
    dependencies = {
        { 'folke/lazydev.nvim', ft = { 'lua', }, opts = {} },
        -- 'L3MON4D3/LuaSnip',
        {
            'Exafunction/windsurf.nvim',
            main = "codeium",
            dependencies = {
                "nvim-lua/plenary.nvim",
                'saghen/blink.compat',
            },
            opts = { enable_cmp_source = false }
        }
    },
    opts = {
        keymap = {
            preset = 'default',
        },
        appearance = { nerd_font_variant = "mono", },
        completion = {
            ghost_text = {
                enabled = true,
                show_without_selection = true,
            },
            documentation = { auto_show = true, auto_show_delay_ms = 10 },
            trigger = { prefetch_on_insert = true, },
            accept = {
                auto_brackets = { enabled = true, },
            },
            list = {
                max_items = 25,
                selection = {
                    preselect = true,
                    auto_insert = false,
                }
            },
            menu = {
                draw = {
                    treesitter = { 'lsp', 'snippets' },
                    padding = { 2, 3 },
                    gap = 2,
                    columns = {
                        { "label",     "label_description", gap = 1 },
                        { "kind_icon", "kind" }
                    },
                },
            },
        },
        signature = { enabled = true, },
        sources = {
            default = { 'lsp', 'path', 'snippets', 'lazydev', 'codeium' },
            per_filetype = {
                sql = { inherit_defaults = true, 'dadbod', },
                lua = { inherit_defaults = true, 'lazydev' },
            },
            providers = {
                codeium = {
                    name = 'Codeium',
                    module = 'codeium.blink',
                    score_offset = 8,
                    async = true
                },
                lsp = {
                    module = 'blink.cmp.sources.lsp',
                    fallbacks = { 'snippets', 'buffer' },
                    score_offset = 6,
                },
                path = {
                    module = 'blink.cmp.sources.path',
                    fallbacks = { 'buffer' },
                    score_offset = 5,
                },
                snippets = {
                    module = 'blink.cmp.sources.snippets',
                    score_offset = 5,
                },
                lazydev = {
                    module = 'lazydev.integrations.blink',
                    score_offset = 7,
                },
                dadbod = {
                    name = 'Dadbod',
                    module = 'vim_dadbod_completion.blink',
                },
            },
        },
        snippets = { preset = 'default' },
        cmdline = {
            keymap = { preset = 'inherit' },
            completion = {
                ghost_text = { enabled = true },
                menu = { auto_show = true },
            },
        },
        fuzzy = { implementation = 'prefer_rust_with_warning' },
    },
    opts_extend = { 'sources.default' },
}
