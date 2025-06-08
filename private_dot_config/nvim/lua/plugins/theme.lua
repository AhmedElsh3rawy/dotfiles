return {
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('tokyonight').setup({
                style = 'night',
                on_highlights = function(highlights, _)
                    highlights['@punctuation.bracket'] = { fg = '#bb9af7' }
                    highlights['@punctuation.delimiter'] = { fg = '#f7768e' }
                end,
            })
        end,
    },
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        priority = 1000,
        config = function()
            require('catppuccin').setup({
                flavour = 'mocha',
                custom_highlights = {
                    Normal = { bg = '#1E1D2D' },
                    ['@punctuation.bracket'] = { fg = '#F38BA8' },
                    ['@punctuation.delimiter'] = { fg = '#F38BA8' },
                },
            })
        end,
    },
}
