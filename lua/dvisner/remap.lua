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

function append_semicolon()
	local current_line = vim.fn.line(".")
	local line_length = #vim.fn.getline(current_line)
	local col = line_length + 1
	vim.api.nvim_buf_set_text(0, current_line - 1, col - 1, current_line - 1, col - 1, { ";" })
	vim.fn.cursor(current_line, col)
end
vim.keymap.set("i", ";;", "<C-O>:lua append_semicolon()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>;;", "A;<Esc>", { noremap = true, silent = true })

vim.keymap.set("i", "{<CR>", "{<CR>}<Esc>O", { noremap = true, silent = true })
