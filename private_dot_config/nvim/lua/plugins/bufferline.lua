return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup({
				options = {
					offsets = {
						{
							filetype = "NvimTree",
							text = "File Explorer",
							highlight = "Directory",
							separator = true,
						},
					},
				},
			})
		end,
	},
	{
		"roobert/bufferline-cycle-windowless.nvim",
		dependencies = {
			{ "akinsho/bufferline.nvim" },
		},
		config = function()
			require("bufferline-cycle-windowless").setup({
				-- whether to start in enabled or disabled mode
				default_enabled = true,
			})
		end,
	},
}
