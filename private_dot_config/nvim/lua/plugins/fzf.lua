return {
    'ibhagwan/fzf-lua',
    config = function()
        local fzf = require('fzf-lua')
        local actions = fzf.actions
        local config = fzf.config

        fzf.setup({
            winopts = {
                width = 0.8,
                height = 0.8,
                row = 0.5,
                col = 0.5,
                preview = {
                    scrollchars = { '┃', '' },
                },
            },
            files = {
                cwd_prompt = false,
                actions = {
                    -- ['alt-i'] = { actions.toggle_ignore },
                    -- ['alt-h'] = { actions.toggle_hidden },
                },
            },
            grep = {
                actions = {
                    ['alt-i'] = { actions.toggle_ignore },
                    ['alt-h'] = { actions.toggle_hidden },
                },
            },
        })
    end,
}
