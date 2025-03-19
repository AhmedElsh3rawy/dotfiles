return {
  -- formatting for rust
  {
    'rust-lang/rust.vim',
    ft = 'rust',
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
  -- rust config
  -- {
  -- 	"mrcjkb/rustaceanvim",
  -- 	version = "^4",
  -- 	ft = { "rust" },
  -- },
  -- crates in rust
  {
    'saecki/crates.nvim',
    ft = { 'toml' },
    config = function(_, opts)
      local crates = require('crates')
      crates.setup(opts)
      require('cmp').setup.buffer({
        sources = { { name = 'crates' } },
      })
      crates.show()
      vim.keymap.set('n', '<leader>rcu', require('crates').upgrade_all_crates, { desc = 'Update crates' })
      -- vim.keymap.set("n", "<leader>rcd", ":lua require("crates").open_documentation() <CR>", {})
    end,
  },
}
