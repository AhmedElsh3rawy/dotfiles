return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  -- lazy = false,
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local lspconfig = require("lspconfig")
    -- local capabilities = vim.lsp.protocol.make_client.capabilities()

    local on_attach = function(client, bufnr)
      local bufmap = function(keys, func)
        local opts = { buffer = bufnr, noremap = true, silent = true }
        vim.keymap.set("n", keys, func, opts)
      end

      -- bufmap("<leader>r", vim.lsp.bur.rename)
      bufmap("K", vim.lsp.buf.hover)
      bufmap("<leader>gd", vim.lsp.buf.definition)
      bufmap("<leader>gD", vim.lsp.buf.declaration)
      bufmap("<leader>gr", vim.lsp.buf.references)
      bufmap("<leader>ca", vim.lsp.buf.code_action)
      bufmap("<leader>gI", vim.lsp.buf.implementation)
      bufmap("<leader>D", vim.lsp.buf.type_definition)
    end

    local servers =
    { "bashls", "lua_ls", "gopls", "pyright", "clangd", "nil_ls", "tsserver", "eslint", "tailwindcss" }

    -- lspconfig.rust_analyzer.setup({
    --   on_attach = on_attach,
    -- })

    for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
    end

    vim.lsp.set_log_level("debug")
  end,
}
