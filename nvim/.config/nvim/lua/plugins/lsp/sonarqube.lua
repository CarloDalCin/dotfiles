return {
	"iamkarasik/sonarqube.nvim",
	event = "VeryLazy",
	dependencies = { "williamboman/mason.nvim" },
	opts = function()
		local extension_path = vim.fn.stdpath("data") .. "/mason/packages/sonarlint-language-server/extension"

		return {
			lsp = {
				cmd = {
					vim.fn.exepath("java"),
					"-jar",
					extension_path .. "/server/sonarlint-ls.jar",
					"-stdio",
					"-analyzers",
					extension_path .. "/analyzers/sonargo.jar",
					extension_path .. "/analyzers/sonarhtml.jar",
					extension_path .. "/analyzers/sonariac.jar",
					extension_path .. "/analyzers/sonarjava.jar",
					extension_path .. "/analyzers/sonarjavasymbolicexecution.jar",
					extension_path .. "/analyzers/sonarjs.jar",
					extension_path .. "/analyzers/sonarphp.jar",
					extension_path .. "/analyzers/sonarpython.jar",
					extension_path .. "/analyzers/sonartext.jar",
					extension_path .. "/analyzers/sonarxml.jar",
				},
			},
		}
	end,
}
