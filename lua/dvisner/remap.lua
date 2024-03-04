vim.keymap.set("n", "<leader>fv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>fr", function()
	local pattern = vim.fn.input("Pattern: ")
	local replacement = vim.fn.input("Replacement: ")

	vim.cmd(":%s/" .. pattern .. "/" .. replacement .. "/g")
end)

vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<leader>bn", ":bnext<CR>")
vim.keymap.set("n", "<leader>bp", ":bprev<CR>")

vim.keymap.set("v", "<leader>y", '"+y')

vim.keymap.set("n", "<leader>yy", '"+yy')
