return {
  "NvChad/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
      rgb_fn = true,
      hsl_fn = true,
      css = true,
      css_fn = true,
    })
  end,
}
