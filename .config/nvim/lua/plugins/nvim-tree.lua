require('nvim-tree').setup({
  sort_by = 'case_sensitive',
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = '<C-h>', action = 'dir_up' },
        { key = '<C-l>', action = 'cd' },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
})

local map = vim.api.nvim_set_keymap

map('n', '<Leader>t', '<Cmd>NvimTreeToggle<CR>', { noremap = true, silent = false })
map('n', '<Leader>s', '<Cmd>NvimTreeFindFile<CR>', { noremap = true, silent = false })

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

