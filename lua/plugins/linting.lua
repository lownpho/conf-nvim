return {
    "mfussenegger/nvim-lint",
    lazy = true,
    event = { "BufReadPost", "BufNewFile" }, -- Comment to disable automatic linting on file open
    config = function()
        local lint = require("lint")
        lint.linters_by_ft = {
            python = { "flake8" },
            lua = { "luacheck" },
            cpp = { "clangtidy" },
            c = { "clangtidy" },
            sh = { "shellcheck" },
        }

        -- disable linters by lint.linters_by_ft['python'] = nil

        local lint_autogroup = vim.api.nvim_create_augroup("lint", { clear = true })
        vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
            group = lint_autogroup,
            callback = function()
                -- Only run on modifiable buffers to avoid noise
                if vim.bo.modifiable then
                    lint.try_lint()
                end
            end,
        })

        vim.keymap.set("n", "<leader>l", function() lint.try_lint() end, { desc = "[l]int current buffer" })
    end,
}