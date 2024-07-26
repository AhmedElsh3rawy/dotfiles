return {
  "ggandor/leap.nvim",
  debendencies = { "tpope/vim-repeat" },
  config = function()
    require("leap").create_default_mappings()
  end,
}
