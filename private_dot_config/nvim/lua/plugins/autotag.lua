return {
    'windwp/nvim-ts-autotag',
    config = function()
        require('nvim-ts-autotag').setup({
            ft = { 'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact' }
        })
    end
}
