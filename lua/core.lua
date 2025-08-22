-- Global variables
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Keymaps not related to plugins

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Resize with arrows when using multiple windows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", { desc = "Horizontal resize (shrink)" })
vim.keymap.set("n", "<C-down>", ":resize +2<CR>", { desc = "Horizontal resize (enlarge)" })
vim.keymap.set("n", "<C-right>", ":vertical resize -2<CR>", { desc = "Vertical resize (shrink)" })
vim.keymap.set("n", "<C-left>", ":vertical resize +2<CR>", { desc = "Vertical resize (shrink)" })

-- Clear search highlights
vim.keymap.set("n", "<leader>nh", ":nohlsearch<CR>", { desc = "Clear search highlights" })

-- System clipboard
-- vim.keymap.set("v", "<leader>y", [["+y]], { desc = "Copy to system clipboard" })
-- vim.keymap.set("n", "<leader>p", [["+p]], { desc = "Paste from system clipboard" })

-- Options
vim.opt.mouse = "a" -- Enable mouse support
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.number = true -- Show absolute line numbers

vim.opt.showmode = false -- Disable showing mode in the command line
vim.opt.signcolumn = "yes" -- Always show the sign column

-- Scheduling what could increase startup time
vim.schedule(function()
    vim.opt.clipboard = "unnamedplus" -- Use the system clipboard
end)

vim.opt.breakindent = true -- Indent wrapped lines

vim.opt.undofile = true -- Enable persistent undo

-- Search: case insensitive unless uppercase letters are used
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.updatetime = 250 -- Faster completion
vim.opt.timeoutlen = 300 -- Time to wait for a mapped sequence to complete

-- Splits (not that I use them much)
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Show whitespace characters
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣"}

vim.opt.inccommand = "split" -- Show live substitutions in a split window

vim.opt.cursorline = true -- Highlight the line with the cursor

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
