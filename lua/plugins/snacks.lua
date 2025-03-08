return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    terminal = { enabled = false },
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
    notifier = { enabled = true, timeout = 3000 }
  },
  keys = {
    { "<C-\\>",      function() Snacks.terminal() end, desc = "Toggle Terminal" }
    }
}
