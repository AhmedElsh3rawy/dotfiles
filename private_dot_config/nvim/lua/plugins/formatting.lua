return {
    'stevearc/conform.nvim',
    config = function()
        require('conform').setup({
            formatters_by_ft = {
                html = { 'prettier' },
                css = { 'prettier' },
                scss = { 'prettier' },
                json = { 'prettier' },
                yaml = { 'prettier' },
                javascriptreact = { 'biome', 'biome-organize-imports' },
                typescriptreact = { 'biome', 'biome-organize-imports' },
                javascript = { 'biome' },
                typescript = { 'biome' },
                markdown = { 'prettier' },
                lua = { 'stylua' },
                python = { 'ruff_format', 'black' },
                go = { 'gofmt', 'goimports', 'golines' },
                rust = { 'rustfmt' },
                bash = { 'shfmt' },
                c = { 'clang_format' },
                cs = { 'clang_format' },
                java = { 'clang_format' },
                cpp = { 'clang_format' },
                sql = { 'sql_formatter' },
                php = { 'pint' },
                qml = { 'qmlformat' },
                tex = { 'latexindent' }, -- pacman -S perl-yaml-tiny perl-file-homedir perl-file-which perl-unicode-linebreak
            },

            format_on_save = {
                timeout_ms = 500,
                lsp_format = 'fallback',
            },
        })
    end,
}
