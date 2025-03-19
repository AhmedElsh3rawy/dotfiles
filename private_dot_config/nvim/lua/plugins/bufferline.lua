return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup({
        -- highlights = require("catppuccin.groups.integrations.bufferline").get(),
        highlights = {},
        options = {
          offsets = {
            {
              filetype = 'NvimTree',
              -- text = "File Explorer",
              text = '',
              highlight = 'Directory',
              separator = true,
            },
          },
        },
      })
    end,
  },
  {
    'roobert/bufferline-cycle-windowless.nvim',
    dependencies = {
      { 'akinsho/bufferline.nvim' },
    },
    config = function()
      require('bufferline-cycle-windowless').setup({
        default_enabled = true,
      })
    end,
  },
}
