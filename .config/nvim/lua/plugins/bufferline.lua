require('bufferline').setup({
  options = {
    separator_style = 'think'
  }
})

local map = vim.api.nvim_set_keymap

map('n', '<Leader>tp', '<Cmd>BufferLineCyclePrev<CR>', { noremap = true, silent = true })
map('n', '<Leader>tn', '<Cmd>BufferLineCycleNext<CR>', { noremap = true, silent = true })
map('n', '<Leader>tP', '<Cmd>BufferLineMovePrev<CR>', { noremap = true, silent = true })
map('n', '<Leader>tN', '<Cmd>BufferLineMoveNext<CR>', { noremap = true, silent = true })
map('n', '<Leader>tf', '<Cmd>BufferLinePick<CR>', { noremap = true, silent = true })
map('n', '<Leader>tq', '<Cmd>bd<CR>', { noremap = true, silent = true })
