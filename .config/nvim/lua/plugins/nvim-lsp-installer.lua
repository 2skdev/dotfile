local lsp_installer = require('nvim-lsp-installer')

lsp_installer.on_server_ready(function(server)
  local opts = {}

  opts.capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  vim.opt.completeopt = 'menu,menuone,noselect'

  opts.on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>D', '<Cmd>lua vim.lsp.buf.declaration()<CR>', { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>d', '<Cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
  end

  server:setup(opts)
end)
