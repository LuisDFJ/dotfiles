return {
	'nvim-treesitter/nvim-treesitter',
    dependencies = { 'OXY2DEV/markview.nvim' },
	branch = 'master',
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require('nvim-treesitter.configs').setup {
			ensure_installed = { "c", "python", "lua", "markdown" },
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			}
		}
	end
}
