return {
    'stevearc/conform.nvim',
    config = function()
        require('conform').setup({
            formatters_by_ft = {
                html = { 'prettier' },
                css = { 'prettier' },
                json = { 'prettier' },
                yaml = { 'prettier' },
                lua = { 'stylua' },
                python = { 'ruff_format', 'black' },
                go = { 'gofmt', 'goimports', 'golines' },
                javascript = { 'biome' },
                typescript = { 'biome' },
                bash = { 'shfmt' },
                c = { 'clang_format' },
                cpp = { 'clang_format' },
                sql = { 'sql_formatter' },
                php = { 'pint' },
            },

            format_on_save = {
                timeout_ms = 500,
                lsp_format = 'fallback',
            },
        })
    end,
}
