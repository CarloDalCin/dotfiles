return {
	"FylerOrg/fyler.nvim",
	dependencies = { "echasnovski/mini.icons" },
	keys = {
		{
			"<leader>e",
			function()
				require("fyler").open({ kind = "floating" })
			end,
			desc = "File manager (Fyler)",
		},
	},
	opts = {
		auto_confirm_simple_mutation = true,

		use_as_default_explorer = true,
		follow_current_file = true,
		follow_root_dir = true,

		kind_presets = { floating = { border = "rounded" } },

		ui = {
			indent_guides = true,
		},

		extensions = {
			git = { enabled = true, inline = true },
			-- for the trash extension to work, the $HOME/.local/share/Trash/ must contains file/ and info/
			trash = { enabled = true },
			watcher = { enabled = true },
		},

		integrations = { icon = "mini_icons" },

		-- snacks integration for lsp file actions
		hooks = {
			on_rename = function(src_path, dest_path)
				require("snacks").rename.on_rename_file(src_path, dest_path)
			end,
		},
	},
}
