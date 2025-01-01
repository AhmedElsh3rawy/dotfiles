return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "cpp", "lua", "javascript", "typescript", "tsx", "nix", "rust", "go", "python" },
            highlight = { enable = true, use_languagetree = true },
            indent = { enable = true },
        })
    end,
}
