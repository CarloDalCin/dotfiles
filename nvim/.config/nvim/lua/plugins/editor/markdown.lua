return {
	"MeanderingProgrammer/render-markdown.nvim",
	ft = { "latex", "markdown", "pandoc", "vimwiki" },
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.icons" },
	opts = {
		completions = { lsp = { enabled = true } },
		-- file_types = { "markdown", "vimwiki" },
	},
}
