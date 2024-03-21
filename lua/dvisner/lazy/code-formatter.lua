return {
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local conform = require("conform")
			conform.setup({
				formatters_by_ft = {
					javascript = { "prettierd" },
					typescript = { "prettierd" },
					javascriptreact = { "prettierd" },
					typescriptreact = { "prettierd" },
					css = { "prettierd" },
					--html = { "prettierd" },
					json = { "prettierd" },
					markdown = { "prettierd" },
					lua = { "stylua" },
					rust = { "rustfmt" },
					zsh = { "beautysh" },
				},
				format_on_save = {
					--	lsp_fallback = true,
					async = false,
					timeout_ms = 2000,
				},
			})
			vim.keymap.set({ "n", "v" }, "<leader>mp", function()
				conform.format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 2000,
				})
			end)
		end,
	},
}
