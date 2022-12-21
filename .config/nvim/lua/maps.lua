local map = vim.api.nvim_set_keymap

-- space leader
vim.g.mapleader = ' '

-- to normal mode
map('i', 'jj', '<Esc>', { noremap = true, silent = false })

-- toggle highlight
map('n', '<Esc><Esc>', '<Cmd>set nohlsearch!<CR>', { noremap = false, silent = true })

-- file
map('n', '<Leader>w', '<Cmd>w<CR>', { noremap = true, silent = false })
map('n', '<Leader>q', '<Cmd>q<CR>', { noremap = true, silent = false })
map('n', '<Leader>wq', '<Cmd>wq<CR>', { noremap = true, silent = false })
map('n', '<Leader>x', '<Cmd>bp<bar>bd #<CR>', { noremap = true, silent = false })

-- window
map('n', '<Leader>h', '<C-w>h', { noremap = true, silent = false })
map('n', '<Leader>j', '<C-w>j', { noremap = true, silent = false })
map('n', '<Leader>k', '<C-w>k', { noremap = true, silent = false })
map('n', '<Leader>l', '<C-w>l', { noremap = true, silent = false })

-- select line
map('n', '<Leader>a', 'v$ho0', { noremap = true, silent = false })
map('v', '<Leader>a', '$ho0', { noremap = true, silent = false })

-- split
map('n', '<Leader>_', '<Cmd>sp<CR>', { noremap = true, silent = false })
map('n', '<Leader><Bar>', '<Cmd>vs<CR>', { noremap = true, silent = false })

-- delete
map('n', 'x', '"_x', { noremap = true, silent = false })
map('v', 'x', '"_x', { noremap = true, silent = false })
map('n', 'D', '"_D', { noremap = true, silent = false })
map('n', 'dw', '"_dw', { noremap = true, silent = false })

