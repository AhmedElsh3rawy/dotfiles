return {
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('tokyonight').setup({
                style = 'night',
                -- transparent = true,
                on_highlights = function(highlights, _)
                    highlights['@punctuation.bracket'] = { fg = '#bb9af7' }
                    highlights['@punctuation.delimiter'] = { fg = '#f7768e' }
                end,
            })
        end,
    },
    {
        'sainnhe/gruvbox-material',
        lazy = false,
        priority = 1000,
    },
}
