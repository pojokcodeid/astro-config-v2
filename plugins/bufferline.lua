return {
  {
    "famiu/bufdelete.nvim",
    event = "BufRead",
  },
  {
    "akinsho/bufferline.nvim",
    event = "BufRead",
    config = function()
      require("user.plugins.configs.bufferline")
    end,
  },
}
