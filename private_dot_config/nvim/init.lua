-- NeoVim config

require('options')
require('config.lazy')
require('config.lsp')
require('mappings')

vim.cmd.colorscheme('tokyonight-night')

-- make neovim transparent
-- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
