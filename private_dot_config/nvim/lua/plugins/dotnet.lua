return {
    {
        'seblyng/roslyn.nvim',
        ft = 'cs',
        opts = {},
    },
    {
        'GustavEikaas/easy-dotnet.nvim',
        ft = 'cs',
        config = function()
            require('easy-dotnet').setup()
        end,
    },
}
