return {
    -- TODO: autoopen in a corner (like a minimap) and add the possibility to expand to full screen
    "Owen-Dechow/videre.nvim",
    cmd = "Videre",
    dependencies = {
        "Owen-Dechow/graph_view_yaml_parser", -- Optional: add YAML support
        "Owen-Dechow/graph_view_toml_parser", -- Optional: add TOML support
        "a-usr/xml2lua.nvim",                 -- Optional | Experimental: add XML support
    },
    opts = {
        box_style = "rounded",
        line_style = "sharp",
    }
}
