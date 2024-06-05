return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"rust",
					"toml",
					"javascript",
					"typescript",
					"c",
					"lua",
					"vim",
					"vimdoc",
					"query",
					"go",
				},

				sync_install = false,

				auto_install = true,

				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
				rainbow = {
					enable = true,
					extended_mode = true,
					max_file_lines = nil,
				},
			})
		end,
	},
}
