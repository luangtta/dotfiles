-- options are automatically loaded before lazy.nvim startup
-- formatoptions: https://neovim.io/doc/user/change.html#fo-table
local opt = vim.opt

-- corretor ortográfico
opt.spelllang = { "pt" } -- spell lang
opt.complete = "kspell" -- suggest checking buffer and spell files
opt.guicursor = "i-ci-ve:ver25,n-v-c:blinkon30,r-cr:hor25,o:hor50" -- visual cursor config
opt.textwidth = 90 -- how longer line/ max text to insert in line
opt.formatoptions = "t]" -- set to auto-wrap (t) line using textwidth and force (])
opt.colorcolumn = "+1"
opt.swapfile = false
opt.undolevels = 3000 -- set undo times
