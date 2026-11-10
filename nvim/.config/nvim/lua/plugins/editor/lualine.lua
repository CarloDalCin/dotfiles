return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "echasnovski/mini.icons" },
	opts = {
		options = {
			theme = "auto",
			icons_enabled = true,
			section_separators = { left = "", right = "" },
			component_separators = { left = " |", right = "" },
			globalstatus = true,
			always_show_tabline = false,
			refresh = {
				refresh_time = 20,
			},
		},
		sections = {
			lualine_b = {
				{ "branch", icon = "" },
				{ "diff", symbols = { added = " ", modified = " ", removed = " " } },
			},
			lualine_c = {
				{
					"filename",
					file_status = true,

					path = 0, -- 0 = name only, 1 = relative path, 2 absolute path
					symbols = {
						modified = "  ",
						readonly = "  ",
						unnamed = "[No Name]",
						newfile = "[New]",
					},
					"tabs",
					"windows",
				},
				{
					"diagnostics",
					sources = { "nvim_diagnostic" },
					sections = { "error", "warn", "info", "hint" },
					symbols = { error = " ", warn = " ", info = " ", hint = " " },
					colored = true,
					update_in_insert = false,
					always_visible = false,
				},
			},
			lualine_x = {
				{
					"selectioncount",
					"searchcount",
				},
				{
					"lsp_status",
					show_name = false,
					symbols = { separator = "" },
				},
				{
					"filetype",
					colored = true,
					icon_only = false,
				},
				"encoding",
				{
					"fileformat",
					symbols = {
						unix = "", -- e712
						dos = "", -- e70f
						mac = "", -- e711
					},
				},
			},
		},

		-- tabline = {
		-- 	lualine_a = { "tabs" },
		-- 	lualine_b = { "buffers" },
		-- 	lualine_c = {},
		-- 	lualine_x = {},
		-- 	lualine_y = {},
		-- },

		extensions = {
			-- "oil",
			"lazy",
			"mason",
			"quickfix",
			"man",
		},
	},
}
