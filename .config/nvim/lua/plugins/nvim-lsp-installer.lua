local lsp_installer = require('nvim-lsp-installer')

lsp_installer.on_server_ready(function(server)
  local opts = {}

  opts.capabilities = require('cmp_nvim_lsp').default_capabilities()
  vim.opt.completeopt = 'menu,menuone,noselect'

  opts.on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<Cmd>lua vim.lsp.buf.implementation<CR>', { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
  end

  server:setup(opts)
end)

local map = vim.api.nvim_set_keymap

map('n', '<Leader>e', '<Cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
map('n', '<Leader>E', '<Cmd>lua vim.diagnostic.setloclist()<CR>', { noremap = true, silent = true })
map('n', '[d', '<Cmd>lua vim.diagnostic.goto_prev<CR>', { noremap = true, silent = true })
map('n', ']d', '<Cmd>lua vim.diagnostic.goto_next<CR>', { noremap = true, silent = true })

