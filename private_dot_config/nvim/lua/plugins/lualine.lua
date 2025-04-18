return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local mode = {
            'mode',
            fmt = function(str)
                return ' ' .. str
            end,
        }
        require('lualine').setup({
            options = {
                globalstatus = true,
                -- disabled_filetypes = { 'NvimTree' },
                component_separators = { left = '', right = '|' },
                section_separators = { left = '', right = '' },
            },
            sections = {
                lualine_a = { mode },
                lualine_b = { 'filename' },
                lualine_c = { 'branch', 'diff', 'diagnostics' },
                lualine_x = { 'encoding', 'fileformat', 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { 'location' },
            },
        })
    end,
}
