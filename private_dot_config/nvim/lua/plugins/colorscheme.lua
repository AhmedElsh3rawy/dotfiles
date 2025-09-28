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
        config = function()
            vim.g.gruvbox_material_better_performance = 1
            vim.g.gruvbox_material_background = 'hard'
        end,
    },
    {
        'sainnhe/everforest',
        config = function()
            vim.g.everforest_background = 'hard' -- options: "soft", "medium", "hard"
            vim.g.everforest_enable_italic = 1 -- enable italics
            vim.g.everforest_better_performance = 1
        end,
    },
}
