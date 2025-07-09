local lsp_configs = {}

for _, f in pairs(vim.api.nvim_get_runtime_file('lsp/*.lua', true)) do
    local server_name = vim.fn.fnamemodify(f, ':t:r')
    table.insert(lsp_configs, server_name)
end

vim.lsp.enable(lsp_configs)

local lsp_group = vim.api.nvim_create_augroup('UserLspKeymaps', { clear = true })

vim.api.nvim_create_autocmd('LspAttach', {
    group = lsp_group,
    callback = function(event)
        local buf = event.buf

        local function map(mode, lhs, rhs)
            vim.keymap.set(mode, lhs, rhs, { buffer = buf, silent = true })
        end

        -- stylua: ignore
        map('n', 'K', function() vim.lsp.buf.hover({ border = 'rounded' }) end)
        map('n', 'gd', vim.lsp.buf.definition)
        map('n', 'gD', vim.lsp.buf.declaration)
        map('n', 'gi', vim.lsp.buf.implementation)
        map('n', 'gr', vim.lsp.buf.references)
        map('n', 'gt', vim.lsp.buf.type_definition)
        -- stylua: ignore
        map('n', '<C-k>', function() vim.lsp.buf.signature_help({ border = 'rounded' }) end)
        map('n', '<leader>rn', vim.lsp.buf.rename)
        map({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action)
    end,
})
