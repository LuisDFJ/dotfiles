return {
    'romgrk/barbar.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    init = function()
        vim.g.barbar_auto_setup = false
    end,
    opts = {
        animation = true,
        auto_hide = false,
        tabpages = true,
        clickable = true,
        focus_on_close = 'previous',
        highlight_alternate = false,
        highlight_inactive_file_icons = false,
        highlight_visible = true,
    },
    config = function()
        require('barbar').setup()
    end

}
