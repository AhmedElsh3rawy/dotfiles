return {
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        priority = 1000,
        config = function()
            require('catppuccin').setup({
                flavour = 'auto',
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
                -- transparent_background = true,
            })
        end,
    },
}
