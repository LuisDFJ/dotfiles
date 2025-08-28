vim.g.mapleader = " "
local map = vim.keymap.set

local opts = { noremap = true, silent = true }

map('t', '<ESC>', '<C-\\><C-n>:FloatermHide!<CR>' )

map('n', '<leader>e', ':NvimTreeToggle<CR>' )
map('n', '<leader>t', ':NvimTreeFocus<CR>' )
map('n', '<leader>fn', ':FloatermNew<CR>')
map('n', '<leader>fs', ':FloatermShow!<CR>')

map( 'n', '<A-,>', ':BufferPrevious<CR>' )
map( 'n', '<A-.>', ':BufferNext<CR>' )

map( 'n', '<A-<>', ':BufferMovePrevious<CR>' )
map( 'n', '<A->>', ':BufferMoveNext<CR>' )

map( 'n', '<A-1>', ':BufferGoto 1<CR>' )
map( 'n', '<A-2>', ':BufferGoto 2<CR>' )
map( 'n', '<A-3>', ':BufferGoto 3<CR>' )
map( 'n', '<A-4>', ':BufferGoto 4<CR>' )
map( 'n', '<A-5>', ':BufferGoto 5<CR>' )
map( 'n', '<A-6>', ':BufferGoto 6<CR>' )
map( 'n', '<A-7>', ':BufferGoto 7<CR>' )
map( 'n', '<A-8>', ':BufferGoto 8<CR>' )
map( 'n', '<A-9>', ':BufferGoto 9<CR>' )
map( 'n', '<A-0>', ':BufferLast<CR>' )

map( 'n', '<A-p>', ':BufferPin<CR>' )
map( 'n', '<A-c>', ':BufferClose<CR>' )

map( 'n', '<leader>k', vim.diagnostic.open_float, opts )
map( 'n', '<leader>,', vim.diagnostic.goto_prev, opts )
map( 'n', '<leader>.', vim.diagnostic.goto_next, opts )
map( 'n', '<leader>i', vim.lsp.buf.signature_help, opts )

map( 'n', '<C-s>', ':write<CR>', opts )
map( 'n', '<C-x>', ':q<CR>', opts )
