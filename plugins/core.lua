local trn = ""
if vim.fn.has("win32") == 1 then
  trn = "pwsh<cr>"
end
return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function() require "user.plugins.configs.alpha" end,
  },
  {
    "folke/which-key.nvim",
    config = function(plugin, opts)
      require "plugins.configs.which-key" (plugin, opts) -- include the default astronvim config that calls the setup call
      -- Add bindings which show up as group name
      local wk = require "which-key"
      wk.register({
        ["e"] = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
        b = { name = "Buffer" },
        r = {
          name = "Run",
          s = {
            '<cmd>autocmd bufwritepost [^_]*.sass,[^_]*.scss  silent exec "!sass %:p %:r.css"<CR>',
            "Auto Compile Sass",
          },
          r = { "<cmd>RunCode<CR>", "Run Code" },
          f = { "<cmd>RunFile<CR>", "Run File" },
          p = { "<cmd>RunProject<CR>", "Run Project" },
          g = { "<cmd>ToggleTerm size=70 direction=float<cr>clear<cr>gradle run<cr>" .. trn, "Run Gradle" },
          m = {
            "<cmd>ToggleTerm size=70 direction=float<cr>mvn exec:java -Dexec.mainClass=com.pojokcode.App<cr>",
            "Run MVN",
          },
        },
      }, { mode = "n", prefix = "<leader>" })
    end,
  },
}
