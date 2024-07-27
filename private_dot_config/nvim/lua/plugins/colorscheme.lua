return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup()
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "auto",
        bufferline = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
      })
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = ...,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    -- opts = {},
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "bluz71/vim-moonfly-colors",       name = "moonfly", lazy = false, priority = 1000 },
  {
    "Mofiqul/dracula.nvim",
    config = function()
      require("dracula").setup()
    end,
  },
}
