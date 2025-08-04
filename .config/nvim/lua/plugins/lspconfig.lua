return {
	'neovim/nvim-lspconfig',
	dependencies = {
        'saghen/blink.cmp'
	},
	config = function()
		local capabilities = require('blink.cmp').get_lsp_capabilities()
		local nvim_lsp = require('lspconfig')
        local util = require('lspconfig.util')

		nvim_lsp.pyright.setup{capabilities = capabilities, root_dir = util.root_pattern('pyproject.toml', 'pyrightconfig.json', '.git') }
		nvim_lsp.lua_ls.setup{capabilities = capabilities}
        nvim_lsp.clangd.setup{capabilities = capabilities}

	end
}
