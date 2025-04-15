return {
    'mfussenegger/nvim-lint',
    event = {
        'BufReadPre',
        'BufNewFile',
    },
    config = function()
        local lint = require('lint')
        lint.linters_by_ft = {
            javascript = { 'biomejs' },
            typescript = { 'biomejs' },
            python = { 'ruff', 'mypy' },
        }

        vim.api.nvim_create_autocmd({ 'BufReadPre', 'BufEnter', 'BufWritePost', 'InsertLeave', 'TextChanged' }, {
            callback = function()
                lint.try_lint()
            end,
        })

        vim.keymap.set('n', '<leader>ll', function()
            lint.try_lint()
        end, { desc = 'Trigger linting for current file' })

        vim.diagnostic.config({
            virtual_text = true,
            signs = true,
            underline = true,
            update_in_insert = false,
            severity_sort = true,
        })
    end,
}
