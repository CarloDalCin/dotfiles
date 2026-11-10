vim.filetype.add({
	-- make .h file c headers instead of cpp
	extension = {
		h = "c",
	},
})

return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"saghen/blink.cmp",
	},
	config = function()
		local capabilities = require("blink.cmp").get_lsp_capabilities()

		vim.lsp.config("*", {
			capabilities = capabilities,
		})

		local server_opts = {
			-- lua_ls = {}, -- use lazydev instead
			clangd = {
				cmd = {
					"clangd",
					"--background-index",
					"--clang-tidy",
				},
			},
		}

		require("mason-lspconfig").setup({
			handlers = {
				function(server_name)
					local opts = server_opts[server_name] or {}
					vim.lsp.config(server_name, opts)
					vim.lsp.enable(server_name)
				end,
			},
		})

		-- Keymaps e azioni legate all'aggancio dell'LSP sul buffer corrente
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspAttach", { clear = true }),
			callback = function(event)
				local set = vim.keymap.set
				local opts = { buffer = event.buf, noremap = true, silent = true }

				set("n", "gd", vim.lsp.buf.definition, opts)
				set("n", "gD", vim.lsp.buf.declaration, opts)
				set("n", "K", vim.lsp.buf.hover, opts)
				set("n", "gy", vim.lsp.buf.type_definition, opts)
				set("n", "<leader>rn", vim.lsp.buf.rename, opts)
				set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
				set("n", "<leader>K", vim.diagnostic.open_float, opts)
				set("n", "<leader>w", vim.diagnostic.setloclist, opts)
			end,
		})

		-- Gestione della Quickfix Window (chiusura rapida con 'q')
		vim.api.nvim_create_autocmd("FileType", {
			group = vim.api.nvim_create_augroup("GlobalQuickfixSpecs", { clear = true }),
			pattern = "qf",
			callback = function()
				vim.keymap.set("n", "q", "<cmd>q<CR>", { buffer = true, desc = "Close window" })
			end,
		})

		-- Setup grafico dei diagnostici di Neovim
		vim.diagnostic.config({
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = "✘",
					[vim.diagnostic.severity.WARN] = "▲",
					[vim.diagnostic.severity.HINT] = "⚑",
					[vim.diagnostic.severity.INFO] = "»",
				},
			},
			virtual_text = {
				prefix = "",
				source = "if_many",
				spacing = 4,
			},
			underline = true,
			update_in_insert = false,
			severity_sort = true,
		})
	end,
}
