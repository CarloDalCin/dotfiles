return {
    "nvimdev/template.nvim",
    event = { "BufNewFile" },
    cmd = { "Template", "TemProject" },
    opts = {
        temp_dir = vim.fn.stdpath("config") .. "/templates",
        author = "CarloDalCin",
    }
}
