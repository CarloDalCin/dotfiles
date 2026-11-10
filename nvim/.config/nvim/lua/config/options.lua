-- basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = true
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10
-- vim.opt.virtualedit = "all"
vim.opt.inccommand = "split"

-- indentation
local indent_size = 4
vim.opt.tabstop = indent_size
vim.opt.shiftwidth = indent_size
vim.opt.softtabstop = indent_size
vim.opt.expandtab = true
vim.opt.smartindent = false
vim.opt.autoindent = true
vim.opt.smarttab = true

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- visual settings
vim.opt.signcolumn = "yes"
-- vim.opt.guicursor = ""
vim.opt.showmatch = false
vim.opt.matchtime = 2
vim.opt.cmdheight = 0
vim.opt.showmode = false
vim.opt.pumheight = 10
vim.opt.background = "dark"
-- require("current-theme")
vim.opt.fillchars:append({ eob = "~" })

-- file
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = true
vim.opt.updatetime = 300
vim.opt.autoread = true
vim.opt.autowrite = false

-- behavior settings
vim.opt.errorbells = false
vim.opt.backspace = { "indent", "start", "eol" }
-- vim.opt.path:append("**")
vim.schedule(function()
	vim.opt.clipboard:append("unnamedplus")
end)
vim.opt.mouse = "a"
vim.opt.modifiable = true
vim.g.manpager = "nvim +Man!"
vim.cmd([[
    cnoreabbrev <expr> w (getcmdtype() == ':' && getcmdline() == 'w') ? 'silent w' : 'w'
]])

vim.opt.shortmess:append("W")
vim.opt.shortmess:append("c")
vim.opt.shortmess:append("C")
vim.opt.shortmess:append("s")
