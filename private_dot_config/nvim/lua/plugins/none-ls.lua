return {
  "nvimtools/none-ls.nvim",
  config = function()
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.formatting.gofmt,
        -- null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.formatting.golines,
        null_ls.builtins.formatting.black,
        -- null_ls.builtins.diagnostics.mypy,
        -- null_ls.builtins.formatting.ruff,
        -- null_ls.builtins.formatting.nixpkgs_fmt,
        null_ls.builtins.formatting.shfmt,
        null_ls.builtins.formatting.sql_formatter,
      },
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({
            group = augroup,
            buffer = bufnr,
          })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({ bufnr = bufnr })
              -- vim.lsp.buf.formatting_sync()
            end,
          })
        end
      end,
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Formatting" })
  end,
}
