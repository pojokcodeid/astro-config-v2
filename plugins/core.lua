return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function() require "user.plugins.configs.alpha" end,
  },
}
