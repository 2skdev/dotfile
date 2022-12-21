local actions = require('telescope.actions')

require('telescope').setup({
  defaults = {
    mappings = {
      n = {
        ['q'] = actions.close
      }
    }
  },
})

local map = vim.api.nvim_set_keymap

map('n', '<Leader>f', '<Cmd>Telescope find_files<CR>', { noremap = true, silent = false })
map('n', '<Leader>b', '<Cmd>Telescope buffers<CR>', { noremap = true, silent = false })
map('n', '<Leader>g', '<Cmd>Telescope live_grep<CR>', { noremap = true, silent = false })
