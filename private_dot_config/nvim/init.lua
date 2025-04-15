-- NeoVim config

require('options')
require('config.lazy')
require('config.lsp')
require('mappings')

vim.cmd.colorscheme('catppuccin-mocha')

-- make neovim transparent
-- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
