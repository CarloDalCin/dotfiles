local set = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- moves lines
set("v", "<", "<gv", opts)
set("v", ">", ">gv", opts)

set({ "v", "n" }, "<leader>d", '"_d', opts)
set("i", "jj", "<Esc>")
set("n", "<Esc>", ":nohl<CR>", { silent = true })
set("n", "<C-c>", ":nohl<CR>", { silent = true })

-- wrapping keymaps
set("n", "k", "gk", opts)
set("n", "j", "gj", opts)

set("n", "U", "<C-R>", { desc = "Redo" })
-- set("n", "<leader>e", ":Explore<CR>")
-- set("n", "<leader>f", ":find ")

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal' })

vim.keymap.set('t', '<C-h>', '<C-\\><C-n><C-w>h', { desc = 'Spostati alla finestra sinistra' })
vim.keymap.set('t', '<C-j>', '<C-\\><C-n><C-w>j', { desc = 'Spostati alla finestra sotto' })
vim.keymap.set('t', '<C-k>', '<C-\\><C-n><C-w>k', { desc = 'Spostati alla finestra sopra' })
vim.keymap.set('t', '<C-l>', '<C-\\><C-n><C-w>l', { desc = 'Spostati alla finestra destra' })
