return {
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            signs = {
                add = { text = "+" },
                change = { text = "~" },
                delete = { text = "_" },
                topdelete = { text = "‾" },
                changedelete = { text = "~" },
            },
            on_attach = function(bufnr)
                local gs = package.loaded.gitsigns

                local function map(mode, l, r, opts)
                    opts = opts or {}
                    opts.buffer = bufnr
                    vim.keymap.set(mode, l, r, opts)
                end

                -- Navigation
                map("n", "]c", function()
                    if vim.wo.diff then
                       vim.cmd.normal({"]c", bang = true})
                    else
                       gs.next_hunk()
                    end
                end, { desc = "Go to next hunk [c]hanged" })

                map("n", "[c", function()
                    if vim.wo.diff then
                       vim.cmd.normal({"[c", bang = true})
                    else
                       gs.prev_hunk()
                    end
                end, { desc = "Go to previous hunk [c]hanged" })

                -- Actions
                -- Visual
                map("v", "<leader>hs", function()
                    gs.stage_hunk({vim.fn.line("."), vim.fn.line("v")})
                end, { desc = "[h]unk [s]tage" })
                map("v", "<leader>hr", function()
                    gs.reset_hunk({vim.fn.line("."), vim.fn.line("v")})
                end, { desc = "[h]unk [r]eset" })
                -- Normal
                map("n", "<leader>hs", gs.stage_hunk, { desc = "[h]unk [s]tage" })
                map("n", "<leader>hr", gs.reset_hunk, { desc = "[h]unk [r]eset" })
                map("n", "<leader>hS", gs.stage_buffer, { desc = "[h]unk [S]tage buffer" })
                map("n", "<leader>hu", gs.undo_stage_hunk, { desc = "[h]unk [u]nstage" })
                map("n", "<leader>hR", gs.reset_buffer, { desc = "[h]unk [R]eset buffer" })
                map("n", "<leader>hp", gs.preview_hunk, { desc = "[h]unk [p]review" })
                map("n", "<leader>hb", function() gs.blame_line({full=true}) end, { desc = "[h]unk [b]lame" })
                map("n", "<leader>hd", gs.diffthis, { desc = "[h]unk [d]iff" })
                map("n", "<leader>hD", function() gs.diffthis("@") end, { desc = "[h]unk [D]iff against previous commit" })
                map("n", "<leader>tb", gs.toggle_current_line_blame, { desc = "Toggle [t]oggle [b]lame" })
                map("n", "<leader>td", gs.toggle_deleted, { desc = "Toggle [t]oggle [d]eleted" })
            end,
        },
    },
}
