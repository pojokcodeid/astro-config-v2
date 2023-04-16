return {
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  {
    "kyazdani42/nvim-tree.lua",
    event = "InsertEnter",
    cmd = { "NvimTree", "NvimTreeToggle", "NvimTreeFocus", "NvimTreeClose" },
    -- dependencies = "kyazdani42/nvim-web-devicons",
    config = function()
      require("user.plugins.configs.nvim-tree")
    end,
  },
}
