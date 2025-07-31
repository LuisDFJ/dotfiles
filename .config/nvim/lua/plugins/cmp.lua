return {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '1.*',
    opts = {
        keymap = { preset = 'default' },
        appearance = { nerd_font_variant = 'mono' },
        completion = { documentation = {autoshow = true} },
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
        fuzzy = {
            implementation = "lua",
            prebuilt_binaries = {
                download = true,
                force_version = nil
            }
        }
    },
    opts_extend = { "sources.default" }
}
