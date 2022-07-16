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

-- select line
map('n', '<Leader>a', 'v$ho0', { noremap = true, silent = false })
map('v', '<Leader>a', '$ho0', { noremap = true, silent = false })

-- split
map('n', '<Leader>_', '<Cmd>sp<CR>', { noremap = true, silent = false })
map('n', '<Leader><Bar>', '<Cmd>vs<CR>', { noremap = true, silent = false })

