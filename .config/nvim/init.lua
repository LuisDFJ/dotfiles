vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.opt.clipboard = "unnamedplus"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false

local group = vim.api.nvim_create_augroup("WrapText", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"tex", "markdown", "text"},
  group = group,
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.breakindent = true
    vim.opt_local.formatoptions:append( "qnt" )
    --vim.wo.linebreak = true
    --vim.wo.showbreak = '    '
  end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "wgsl", "rs", "lua", "python", "c", "cpp", "h", "hpp"},
    callback = function()
        vim.treesitter.start()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})

require("keymaps")
require("config.lazy")

