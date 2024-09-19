return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_pending = " ",
            package_installed = "󰄳 ",
            package_uninstalled = " 󰚌",
          },
        },
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          -- LSPs
          "lua_ls",
          "rust_analyzer",
          "ts_ls",
          "eslint",
          "tailwindcss",
          "pyright",
          "clangd",
          "gopls",
          "bashls",
        },
      })
    end,
  },
}
