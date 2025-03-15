return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    dashboard = {
      enabled = true,
      sections = {
          { section = "header" },
          { section = "keys", gap = 1, padding = 1 },
          { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = { 2, 2 } },
          { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 2 },
          { section = "startup" },
      },
    },
    indent = { enabled = true },
    lazygit = { enabled = true },
    notifier = { enabled = true, timeout = 3000 },
    terminal = { enabled = false }
  },
  keys = {
    { "<C-\\>",      function() Snacks.terminal() end, desc = "Toggle Terminal" },
    { "<leader>B",      function() Snacks.dashboard.open(opts) end, desc = "Bring up Dashboard" },
    { "<leader>ll",      function() Snacks.lazygit.open() end, desc = "LazyGit cool" }
  }
}
