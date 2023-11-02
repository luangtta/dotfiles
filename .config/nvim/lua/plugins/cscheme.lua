local opt = vim.opt
opt.background = "light"
return {
  { "catppuccin/nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-latte",
    },
  },
}
--[[return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon" },
  },
}]]
--
