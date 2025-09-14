return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        main = "nvim-treesitter.configs",
        opts = {
            ensure_installed = { 
                "c",
                "cpp",
                "lua",
                "python",
                "bash",
                "json",
                "yaml",
                "markdown",
                "markdown_inline",
                "vimdoc" 
            },
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            }
        }
    }
}
