return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup({
      view = {
        side = 'right',
      },
      filters = {
        dotfiles = false,
      },
      git = {
        enable = false,
        ignore = true,
      },
      update_focused_file = {
        enable = true,
        update_root = false,
      },
      renderer = {
        root_folder_label = false,
      },
    })
  end,
}
