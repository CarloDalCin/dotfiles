vim.g.mapleader = " "
vim.g.maplocalleader = " "

local set = vim.keymap.set
local opts = { noremap = true, silent = true }

-- moves lines
set("v", "<", "<gv", opts)
set("v", ">", ">gv", opts)

set({ "v", "n" }, "<leader>d", '"_d', opts)
set("i", "jk", "<Esc>")
set("i", "kj", "<Esc>")
set("n", "<Esc>", ":nohl<CR>", { silent = true })
set("n", "<C-c>", ":nohl<CR>", { silent = true })

-- wrapping keymaps
set({ "v", "n" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true, desc = "Down" })
set({ "v", "n" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true, desc = "Up" })

set("n", "U", "<C-R>", { desc = "Redo" })
-- set("n", "<leader>e", ":Explore<CR>")
-- set("n", "<leader>f", ":find ")

-- terminal
set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal" })
set("t", "jk", "<C-\\><C-n>", { desc = "Exit terminal" })
set("t", "kj", "<C-\\><C-n>", { desc = "Exit terminal" })

set("t", "<C-h>", "<C-\\><C-n><C-w>h", { desc = "Spostati alla finestra sinistra" })
set("t", "<C-j>", "<C-\\><C-n><C-w>j", { desc = "Spostati alla finestra sotto" })
set("t", "<C-k>", "<C-\\><C-n><C-w>k", { desc = "Spostati alla finestra sopra" })
set("t", "<C-l>", "<C-\\><C-n><C-w>l", { desc = "Spostati alla finestra destra" })
