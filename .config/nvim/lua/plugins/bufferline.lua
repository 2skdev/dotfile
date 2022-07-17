require('bufferline').setup({
  options = {
    separator_style = 'think'
  }
})

local map = vim.api.nvim_set_keymap

map('n', '<C-b>h', '<Cmd>BufferLineCyclePrev<CR>', { noremap = true, silent = true })
map('n', '<C-b>l', '<Cmd>BufferLineCycleNext<CR>', { noremap = true, silent = true })
map('n', '<C-b>H', '<Cmd>BufferLineMovePrev<CR>', { noremap = true, silent = true })
map('n', '<C-b>L', '<Cmd>BufferLineMoveNext<CR>', { noremap = true, silent = true })
map('n', '<C-b>f', '<Cmd>BufferLinePick<CR>', { noremap = true, silent = true })
map('n', '<C-b>q', '<Cmd>bd<CR>', { noremap = true, silent = true })
