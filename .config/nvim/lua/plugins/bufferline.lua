require('bufferline').setup({
  options = {
    separator_style = 'think'
  }
})

local map = vim.api.nvim_set_keymap

map('n', ']b', '<Cmd>BufferLineCyclePrev<CR>', { noremap = true, silent = true })
map('n', '[b', '<Cmd>BufferLineCycleNext<CR>', { noremap = true, silent = true })
