-- challenge whithout nerd fonts
return {
    "nvim-neo-tree/neo-tree.nvim",
    version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        -- "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    cmd = "Neotree",
    keys = {
        { "\\", "<cmd>Neotree toggle<cr>", desc = "Toggle Neotree" },
    },
    opts = {
        close_if_last_window = true,
        default_component_configs = {
            indent = {
                expander_collapsed = "+",
                expander_expanded = "-",
            },
            git_status = {
                symbols = {
                    added = "+",
                    modified = "~",
                    deleted = "_",
                    renamed = "»",
                    untracked = "?",
                    ignored = "◌",
                    unstaged = "!",
                    staged = "✓",
                    conflict = "c",
                },
            },
        },
        filesystem = {
            filtered_items = {
                visible = true, -- show hidden files
                hide_dotfiles = false,
                hide_gitignored = false,
            },
            components = {
                name = function(config, node)
                    if node.type == "file" then
                        return { text = "f" }
                    elseif node.type == "directory" then
                        return { text = "d" }
                    end
                    return require("neo-tree.sources.filesystem.components.name")(config, node, state)
                end,
            },
        window = {
            mappings = {
                ["\\"] = "close_window",

                },
            },
        },
    },
}
