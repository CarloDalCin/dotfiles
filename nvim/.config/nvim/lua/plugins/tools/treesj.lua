return {
	"wansmer/treesj",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	keys = { "<leader>m" },
	config = function()
		local tsj = require("treesj")

		tsj.setup({ use_default_keymaps = false })

		vim.keymap.set({ "n", "v" }, "<leader>m", tsj.toggle, { desc = "Split/Join block" })
	end,
}
