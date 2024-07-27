return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup({
				-- highlights = {
				-- 	fill = {
				-- 		fg = "#45475a",
				-- 		bg = "#181825",
				-- 	},
				-- 	background = {
				-- 		fg = "#ffffff",
				-- 		bg = "#1e1e2e",
				-- 	},
				-- },
				options = {
					offsets = {
						{
							filetype = "NvimTree",
							-- text = "File Explorer",
							text = "",
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
				default_enabled = true,
			})
		end,
	},
}
