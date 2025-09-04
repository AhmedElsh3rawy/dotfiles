return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('telescope').setup({
                defaults = {
                    file_ignore_patterns = {
                        '%.png',
                        '%.jpg',
                        '%.jpeg',
                        '%.gif',
                        '%.svg',
                        '%.bmp',
                        '%.webp',
                        '%.ico',
                    },
                },
            })
        end,
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            require('telescope').setup({
                extensions = {
                    ['ui-select'] = {
                        require('telescope.themes').get_dropdown({}),
                    },
                },
            })
            require('telescope').load_extension('ui-select')
        end,
    },
}
