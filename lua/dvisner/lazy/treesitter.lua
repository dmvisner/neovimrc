return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "toml", "javascript", "typescript",
                    "lua", "vim", "vimdoc", "query", "racket", "markdown"
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
                indent = {
                    enable = true,
                },
                textobjects = {
                    move = {
                        enable = true,
                        set_jumps = true,
                        goto_next_start = {
                            ["}"] = "@function.inner",
                        },
                        goto_previous_start = {
                            ["{"] = "@function.inner",
                        },
                    },
                },
            })
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
    },
}
