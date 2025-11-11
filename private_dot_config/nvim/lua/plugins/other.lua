return {
    { 'nvim-lua/plenary.nvim' },
    {
        'nvim-tree/nvim-web-devicons',
        config = function()
            require('nvim-web-devicons').setup({})
        end,
    },
    {
        'j-hui/fidget.nvim',
        config = function()
            require('fidget').setup({})
        end,
    },
}
