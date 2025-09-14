return {
    "folke/which-key.nvim",
    event = "VimEnter",
    opts = {
        icons = {
            keys = {
                Up = "<Up>",
                Down = "<Down>",
                Left = "<Left>",
                Right = "<Right>",
                C = "<C-...>",
                M = "<M-...>",
                S = "<S-...>",
                D = "<D-...>",
                CR = "<CR>",
                Esc = "<Esc>",
                ScrollWheelUp = "<ScrollWheelUp>",
                ScrollWheelDown = "<ScrollWheelDown>",
                NL = "<NL>",
                BS = "<BS>",
                Space = "<Space>",
                Tab = "<Tab>",
            },
        },

        -- Existing keychains that can't have a description
        spec = {
            { "<leader>C", group = "[C]ode", mode = { "n", "x"} },
            { "<leader>d", group = "[D]ocument" },
            { "<leader>r", group = "[R]ename" },
            { "<leader>s", group = "[S]earch" },
            { "<leader>w", group = "[W]orkspace" },
            { "<leader>t", group = "[T]oggle" },
            { "<leader>h", group = "[H]unk" },
        },
    },
}
