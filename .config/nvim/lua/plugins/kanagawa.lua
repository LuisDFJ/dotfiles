return {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function ()
        require('kanagawa').setup({
            theme = "dragon",  --wave lotus dragon
            background = {
                dark = "dragon",
                light = "lotus"
            }
        })
        vim.cmd.colorscheme( 'kanagawa' )
    end
}
