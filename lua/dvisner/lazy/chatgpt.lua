return {
    {
  "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
--[[    config = function()
      require("chatgpt").setup({
          api_key_cmd = "op read op://Personal/Openai/api-key --no-newline"
      })
    end,--]]
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim",
      "nvim-telescope/telescope.nvim"
    }
}
}
