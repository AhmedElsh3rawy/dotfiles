local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Run or continue the debugger",
    },
  },
}

M.crates = {
  plugin = true,
  n = {
    ["<leader>rcu"] = {
      function()
        require("crates").upgrade_all_crates()
      end,
      "update crates",
    },
    ["<leader>rcd"] = {
      "<cmd> lua require('crates').open_documentation() <CR>",
      "Open crate documentation",
    },
  },
}
-- M.disabled = {
--   n = {
--     ["s"] = "",
--     ["S"] = "",
--   },
-- }

M.abc = {
  i = {
    ["<A-n>"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
    ["jn"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
}

return M
