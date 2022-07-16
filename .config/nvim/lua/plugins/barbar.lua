local map = vim.api.nvim_set_keymap

map('n', '<C-b>h', '<Cmd>BufferPrevious<CR>', { noremap = true, silent = true })
map('n', '<C-b>l', '<Cmd>BufferNext<CR>', { noremap = true, silent = true })
map('n', '<C-b>H', '<Cmd>BufferMovePrevious<CR>', { noremap = true, silent = true })
map('n', '<C-b>L', '<Cmd>BufferMoveNext<CR>', { noremap = true, silent = true })

map('n', '<C-b>1', '<Cmd>BufferGoto 1<CR>', { noremap = true, silent = true })
map('n', '<C-b>2', '<Cmd>BufferGoto 2<CR>', { noremap = true, silent = true })
map('n', '<C-b>3', '<Cmd>BufferGoto 3<CR>', { noremap = true, silent = true })
map('n', '<C-b>4', '<Cmd>BufferGoto 4<CR>', { noremap = true, silent = true })
map('n', '<C-b>5', '<Cmd>BufferGoto 5<CR>', { noremap = true, silent = true })
map('n', '<C-b>6', '<Cmd>BufferGoto 6<CR>', { noremap = true, silent = true })
map('n', '<C-b>7', '<Cmd>BufferGoto 7<CR>', { noremap = true, silent = true })
map('n', '<C-b>8', '<Cmd>BufferGoto 8<CR>', { noremap = true, silent = true })
map('n', '<C-b>9', '<Cmd>BufferGoto 9<CR>', { noremap = true, silent = true })
map('n', '<C-b>0', '<Cmd>BufferLast<CR>', { noremap = true, silent = true })

map('n', '<C-b>q', '<Cmd>BufferClose<CR>', { noremap = true, silent = true })