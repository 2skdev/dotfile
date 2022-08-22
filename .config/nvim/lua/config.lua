vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.wrap = false
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.list = true
vim.o.listchars = 'tab:»-,space:･,trail:-,eol:↲'
vim.o.cursorline = true
vim.o.termguicolors = true
vim.wo.signcolumn = 'yes'

-- restore cursor pos
vim.api.nvim_create_autocmd({ 'BufReadPost' }, {
  pattern = { '*' },
  callback = function()
    vim.api.nvim_exec('silent! normal! g`"zv', false)
  end,
})

-- keep directory
local path = vim.fn.getcwd()
vim.api.nvim_create_autocmd({ 'WinLeave' }, {
  callback = function()
    path = vim.fn.getcwd()
  end
})
vim.api.nvim_create_autocmd({ 'WinEnter' }, {
  callback = function()
    vim.api.nvim_set_current_dir(path)
  end
})

-- WSL yank
vim.cmd[[
if executable('/mnt/c/Windows/System32/clip.exe')
  augroup WSLYank
    autocmd!
    autocmd TextYankPost * if v:event.operator ==# 'y' | call system('/mnt/c/Windows/System32/clip.exe', @0) | endif
  augroup END
endif
]]

