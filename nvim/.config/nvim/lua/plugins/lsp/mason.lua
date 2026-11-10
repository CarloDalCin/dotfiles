return {
	{
		"williamboman/mason.nvim",
		lazy = true,
		opts = {
			firewall = { enabled = true },
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = true,
		dependencies = {
			"williamboman/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		event = "VeryLazy",
		dependencies = { "williamboman/mason.nvim" },
		opts = function()
			local if_exe = function(exe, tool)
				return vim.fn.executable(exe) == 1 and tool or nil
			end

			local tools = {
				-- Linter and Formatter
				"stylua",
				"clang-format",
				"ruff",
				"shfmt",
				"shellcheck",
				"prettierd",
				"markdownlint",
				"htmlbeautifier",
				"prettier",
				"asmfmt",

				-- Lsp servers
				"lua_ls",
				"clangd",
				"pyright",
				"bashls",
				"jsonls",
				"html",
				"cssls",
				"yamlls",
				"marksman",
				"jdtls", -- java
				"wasm_language_tools",

				-- sonarqube lsp for better code
				"sonarlint-language-server",

				-- Conditional tools
				if_exe("go", "gopls"),
				if_exe("rustc", "rust-analyzer"),
				if_exe("zig", "zls"),
				if_exe("node", "eslint_d"),
			}

			return {
				ensure_installed = vim.tbl_filter(function(item)
					return item ~= nil
				end, tools),
				auto_update = true,
				run_on_start = true,
				debounce_hours = 22,
			}
		end,
	},
}
