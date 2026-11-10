return {
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"s",
				mode = { "n", "x", "o" },
				function()
					require("flash").jump()
				end,
				desc = "Flash",
			},
			{
				"S",
				mode = { "n", "o" },
				function()
					require("flash").treesitter()
				end,
				desc = "Flash Treesitter",
			},
			{
				"r",
				mode = "o",
				function()
					require("flash").remote()
				end,
				desc = "Remote Flash",
			},
			{
				"R",
				mode = { "o", "x" },
				function()
					require("flash").treesitter_search()
				end,
				desc = "Treesitter Search",
			},
			{
				"<c-s>",
				mode = { "c" },
				function()
					require("flash").toggle()
				end,
				desc = "Toggle Flash Search",
			},
		},
	},

	{
		"chrisgrieser/nvim-spider",

		keys = {
			{
				"w",
				mode = { "n", "o", "x" },
				function()
					require("spider").motion("w")
				end,
				desc = "Spider-w",
			},
			{
				"e",
				mode = { "n", "o", "x" },
				function()
					require("spider").motion("e")
				end,
				desc = "Spider-e",
			},
			{
				"b",
				mode = { "n", "o", "x" },
				function()
					require("spider").motion("b")
				end,
				desc = "Spider-b",
			},
			{
				"ge",
				mode = { "n", "o", "x" },
				function()
					require("spider").motion("ge")
				end,
				desc = "Spider-ge",
			},
		},
	},

	{
		"nvim-mini/mini.ai",
		version = "*",
		event = "VeryLazy",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		opts = function()
			local ai_ts = require("mini.ai").gen_spec.treesitter
			return {
				n_lines = 100,
				custom_textobjects = {
					f = ai_ts({ a = "@function.outer", i = "@function.inner" }),
					c = ai_ts({ a = "@class.outer", i = "@class.inner" }),
					a = ai_ts({ a = "@parameter.outer", i = "@parameter.inner" }),
				},
			}
		end,
	},

	{
		"echasnovski/mini.move",
		version = "*",
		keys = {
			{ "<A-h>", mode = { "n", "v" } },
			{ "<A-l>", mode = { "n", "v" } },
			{ "<A-j>", mode = { "n", "v" } },
			{ "<A-k>", mode = { "n", "v" } },
		},
		opts = {
			mappings = {
				-- visual
				left = "<A-h>",
				right = "<A-l>",
				down = "<A-j>",
				up = "<A-k>",
				-- normal
				line_left = "<A-h>",
				line_right = "<A-l>",
				line_down = "<A-j>",
				line_up = "<A-k>",
			},
		},
	},
}
