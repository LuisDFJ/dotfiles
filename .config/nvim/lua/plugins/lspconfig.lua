return {
	'neovim/nvim-lspconfig',
	dependencies = {
        'saghen/blink.cmp'
	},
	config = function()
		local capabilities = require('blink.cmp').get_lsp_capabilities()

		vim.lsp.config("pyright", {capabilities = capabilities} )
		vim.lsp.config("lua_ls", {capabilities = capabilities} )
        vim.lsp.config("clangd", {capabilities = capabilities, cmd = {'clangd', '--header-insertion=never'}} )
        vim.lsp.config("somesass_ls", {capabilities = capabilities, filetypes = { 'sass', 'scss', 'less', 'css' }} )
        vim.lsp.config("ts_ls", {capabilities = capabilities} )
        vim.lsp.config("texlab", {capabilities = capabilities} )
        vim.lsp.config("julials", {capabilities = capabilities} )
        vim.lsp.config("rust_analyzer", {capabilities = capabilities} )
        vim.lsp.config("astro", {capabilities = capabilities} )

		vim.lsp.enable({"pyright"})
		vim.lsp.enable({"lua_ls"})
        vim.lsp.enable({"clangd"})
        vim.lsp.enable({"somesass_ls"})
        vim.lsp.enable({"ts_ls"})
        vim.lsp.enable({"texlab"})
        vim.lsp.enable({"julials"})
        vim.lsp.enable({"rust_analyzer"})
		vim.lsp.enable({"astro"})
	end
}
