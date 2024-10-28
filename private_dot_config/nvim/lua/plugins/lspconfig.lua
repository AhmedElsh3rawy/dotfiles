return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	-- lazy = false,
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local lspconfig = require("lspconfig")
		local util = require("lspconfig/util")
		-- local capabilities = vim.lsp.protocol.make_client.capabilities()

		local on_attach = function(_, bufnr)
			local bufmap = function(keys, func)
				local opts = { buffer = bufnr, noremap = true, silent = true }
				vim.keymap.set("n", keys, func, opts)
			end

			-- bufmap("<leader>r", vim.lsp.bur.rename)
			bufmap("K", vim.lsp.buf.hover)
			bufmap("gd", vim.lsp.buf.definition)
			bufmap("gD", vim.lsp.buf.declaration)
			bufmap("gr", vim.lsp.buf.references)
			bufmap("<leader>ca", vim.lsp.buf.code_action)
			bufmap("gi", vim.lsp.buf.implementation)
			bufmap("<leader>D", vim.lsp.buf.type_definition)
		end

		local servers = { "bashls", "lua_ls", "pyright", "clangd", "eslint", "omnisharp" }

		lspconfig.ts_ls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
			init_options = {
				preferences = {
					disableSuggestions = true,
					organizeImports = true,
				},
			},
		})

		lspconfig.rust_analyzer.setup({
			on_attach = on_attach,
			capabilities = capabilities,
			filetypes = { "rust" },
			root_dir = util.root_pattern("Cargo.toml"),
			settings = {
				["rust-analyzer"] = {
					cargo = {
						allFeatures = true,
					},
				},
			},
		})

		lspconfig.gopls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
			cmd = { "gopls" },
			filetypes = { "go", "gomod", "gowork", "gotmpl" },
			root_dir = util.root_pattern("go.work", "go.mod", ".git"),
			settings = {
				gopls = {
					completeUnimported = true,
					usePlaceholders = true,
					analyses = {
						unusedparams = true,
					},
				},
			},
		})

		for _, lsp in ipairs(servers) do
			lspconfig[lsp].setup({
				on_attach = on_attach,
				capabilities = capabilities,
			})
		end

		vim.lsp.set_log_level("debug")
	end,
}
