return {
	{
		"mbbill/undotree",
		name = "undotree",
		priority = 1000,
		config = function()
			vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle)
		end,
	},
}
