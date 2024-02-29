vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>fr", function()
    local pattern = vim.fn.input("Pattern: ")
    local replacement = vim.fn.input("Replacement: ")

    vim.cmd(":%s/" .. pattern .. "/" .. replacement .. "/g") 
end)
