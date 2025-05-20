return {
    "kylechui/nvim-surround",
    version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            vim.keymap.set("v", "s", "<Plug>(nvim-surround-visual)", { noremap = false })
            -- Configuration here, or leave empty to use defaults
        })
    end
}
