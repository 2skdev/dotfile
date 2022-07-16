require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    disable = {}
  },
  indent = {
    enable = true,
    disable = {}
  },
  autotag = {
    enable = true,
  },
  ensure_installed = { 'c', 'lua', 'rust', 'python' },
}
