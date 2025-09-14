return {
    "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
    "tpope/vim-fugitive", -- Git integration
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {},
    },

    -- Mini should probably be in another file
    {
        "echasnovski/mini.nvim",
        config = function()
            -- va) -> visually select around )
            -- yinq -> yank inside quotes
            -- c}  -> change inside }
            -- d'a -> delete around apostrophes
            -- etc.
            require("mini.ai").setup({n_lines = 500})
            require("mini.surround").setup({
                mappings = {
                    add = "gza", -- Add surrounding in Normal and Visual modes
                    delete = "gzd", -- Delete surrounding
                    find = "gzf", -- Find surrounding (to the right)
                    find_left = "gzF", -- Find surrounding (to the left)
                    highlight = "gzh", -- Highlight surrounding
                    replace = "gzr", -- Replace surrounding
                    update_n_lines = "gzn", -- Update `n_lines`
                },
            })
        end,
    }
}