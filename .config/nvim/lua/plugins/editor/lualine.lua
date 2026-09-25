return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    priority = 900,
    init = function()
        local lualine_config = {
            options = {
                theme = "auto",
                component_separators = { left = '::', right = '::' },
                section_separators = { left = '', right = '' },
            }
        }

        local has_neopywal, neopywal_lualine = pcall(require, "neopywal.theme.plugins.lualine")

        if has_neopywal then
            neopywal_lualine.setup()
            lualine_config.options.theme = "neopywal"
        end

        require('lualine').setup(lualine_config)
    end
}
