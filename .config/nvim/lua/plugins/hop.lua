local map = vim.api.nvim_set_keymap

map('', 'f', "<Cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<CR>", {})
map('', 'F', "<Cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<CR>", {})
map('', 's', "<Cmd>lua require'hop'.hint_char2({ current_line_only = false })<CR>", {})
