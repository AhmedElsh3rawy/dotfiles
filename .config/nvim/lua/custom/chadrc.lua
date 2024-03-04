---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "catppuccin",
  -- {
  --   vim.api.nvim_set_hl(0, "Normal", { bg = "none" }),
  --   vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }),
  -- },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
