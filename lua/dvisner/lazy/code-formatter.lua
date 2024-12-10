vim.api.nvim_create_user_command("FormatDisable", function()
	vim.g.disable_autoformat = true
end, {
	desc = "Disable autoformat",
})
vim.api.nvim_create_user_command("FormatEnable", function()
	vim.g.disable_autoformat = false
end, {
	desc = "Enable autoformat",
})

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
					html = { "prettierd" },
					json = { "prettierd" },
					markdown = { "prettierd" },
					lua = { "stylua" },
					zsh = { "beautysh" },
					go = { "gofmt" },
				},
				format_on_save = function()
					if vim.g.disable_autoformat then
						return
					end
					return { lsp_fallback = true, async = false, timeout_ms = 2000 }
				end,
			})
			vim.keymap.set({ "n", "v" }, "<leader>mp", function()
				if vim.g.disable_autoformat then
					return
				end

				conform.format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 2000,
				})
			end)
		end,
	},
}
