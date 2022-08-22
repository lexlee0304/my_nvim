require("mason").setup()

require("language_support_config.nvim-cmp")

require("mason-lspconfig").setup()

require("mason-lspconfig").setup_handlers {
	-- The first entry (without a key) will be the default handler
	-- and will be called for each installed server that doesn't have
	-- a dedicated handler.
	function (server_name)
		-- default handler (optional)
		local lsp_handler = require('language_support_config.lsp_handler')
		local opt = {
			on_attach = lsp_handler.on_attach,
			capabilities = lsp_handler.capabilities
		}
		if server_name == 'clangd' then
			local clangd_opt = require('language_support_config.lsp_config.clangd')
			opt = vim.tbl_deep_extend('force', clangd_opt, opt)
		end
		require("lspconfig")[server_name].setup(opt)
	end,
	-- Next, you can provide targeted overrides for specific servers.
	-- For example, a handler override for the `rust_analyzer`:
	["rust_analyzer"] = function ()
		require("rust-tools").setup {}
	end
}
