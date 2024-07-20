-- NeoVim config

require("options")
require("config.lazy")
require("mappings")

function TransColor()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

TransColor()
-- call it :lua TransColor() to make neovim transparant

vim.cmd.colorscheme("tokyonight-night")
