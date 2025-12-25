return {
    'nvim-treesitter/nvim-treesitter',
    event = { 'BufReadPost', 'BufNewFile' },
    build = ':TSUpdate',
    dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects' },
    config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = {
                'c',
                'cpp',
                'lua',
                'java',
                'javascript',
                'typescript',
                'tsx',
                'html',
                'css',
                'rust',
                'go',
                'python',
                'vim',
                'vimdoc',
            },
            highlight = {
                enable = true,
                use_languagetree = true,
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = true },
        })
    end,
}
