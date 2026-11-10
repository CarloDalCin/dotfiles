return {
	"catgoose/nvim-colorizer.lua",
	event = "BufReadPre",
	opts = {
		"html",
		"css",
		"javascript",
		options = {
			parsers = {
				css = true,
				css_fn = true,
			},
			css_color = { enable = true },
			tailwind = {
				enable = false,
				lsp = {
					enable = true,
				},
				update_name = true,
			},
		},
	},
}
