return {
    "folke/zen-mode.nvim",
    config = function()
        vim.keymap.set("n", "<leader>z", function()
            require("zen-mode").setup {
                window = {
                    width = .70,
                    options = { }
                },
                plugins = {
                    options = {
                    ruler = false,
                    showcmd = false,
                    laststatus = 0,
                    }
                },
            }
            require("zen-mode").toggle()
            vim.wo.wrap = true
            vim.wo.number = true
            vim.wo.rnu = true
        end)
    end
}
