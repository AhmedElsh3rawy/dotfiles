local opt = vim.opt

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.wo.relativenumber = true
opt.number = true
opt.swapfile = false
opt.expandtab = true -- Use spaces instead of tabs
opt.tabstop = 2 -- Number of spaces a tab counts for
opt.shiftwidth = 2 -- Number of spaces used for each step of (auto)indent
opt.softtabstop = 2 -- Number of spaces a tab displays as
opt.fillchars = { eob = " " } -- Remove the ~ line
opt.undofile = true
-- Copy to system clipboard
opt.clipboard = "unnamedplus"
vim.o.signcolumn = "yes"
vim.o.background = "dark"
opt.termguicolors = true
opt.scrolloff = 8
opt.cursorline = true
vim.api.nvim_buf_set_option(0, "syntax", "off")
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0
