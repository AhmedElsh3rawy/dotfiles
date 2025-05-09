return {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },

    -- use a release tag to download pre-built binaries
    version = '1.*',

    opts = {
        keymap = { preset = 'default' },

        appearance = {
            -- use_nvim_cmp_as_default = true,
            nerd_font_variant = 'mono',
        },
    },
    opts_extend = { 'sources.default' },
}
