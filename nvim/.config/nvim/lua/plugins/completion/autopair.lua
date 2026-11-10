return {
	{
		"altermo/ultimate-autopair.nvim",
		event = { "InsertEnter", "CmdlineEnter" },
		branch = "v0.6", -- stable branch
		opts = {
			tabout = {
				enable = true,
				hopout = true,
				map = "<tab>",
				cmap = "<tab>",
				do_nothing_if_fail = false, -- alows to insert \t if not inside a pair
			},
			fastwrap = {
				enable = true,
				faster = true,
			},
			space = { enable = true },
			space2 = { enable = true },
			bs = {
				enable = true,
				overjumps = true,
				space = "balance",
				indent_ignore = true,
				single_delete = true,
			},
			cr = {
				enable = true,
				autoclose = true,
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
		event = "InsertEnter",
	},
}
