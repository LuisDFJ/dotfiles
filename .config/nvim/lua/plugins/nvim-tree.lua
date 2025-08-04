return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    version = "*",
    config = function ()
        require('nvim-tree').setup({
            view = {
                width = "25%",
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = false,
            },
            git = {
                enable = true,
                ignore = false,
                timeout = 500
            }
        })
    end
}
