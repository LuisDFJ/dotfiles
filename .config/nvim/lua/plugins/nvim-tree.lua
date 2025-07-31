return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    version = "*",
    config = function ()
        require('nvim-tree').setup({
            view = {
                width = "50%",
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            }
        })
    end
}
