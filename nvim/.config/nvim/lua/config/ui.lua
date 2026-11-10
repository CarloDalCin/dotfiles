-- ui table for global settings
local ui = {
	borders = {
		type = "rounded",
	},
}

---------------------
--- set global ui ---
---------------------
vim.opt.fillchars = {
	vert = "│",
	horiz = "─",
	horizup = "┴",
	horizdown = "┬",
	vertleft = "┤",
	vertright = "├",
	verthoriz = "┼",
}
vim.o.winborder = ui.borders.type
require("vim._core.ui2").enable({})
