return {
    -- pacman -S texlive-latex texlive-binextra texlive-latexrecommended texlive-latexextra texlive-fontsrecommended texlive-fontsextra
    'lervag/vimtex',
    lazy = false,
    init = function()
        vim.g.vimtex_view_method = 'zathura'
    end,
}
