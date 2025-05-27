-- [[ Basic Keymaps ]] See `:help vim.keymap.set()`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>') -- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' }) -- Diagnostic keymaps
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' }) -- Remap exit builtin terminal to ESC ESC instead of C-\ C-n NOTE: does not work in tmux
vim.keymap.set('n', '<leader>wh', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<leader>wl', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<leader>wj', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<leader>wk', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<leader>ww', '<C-w><C-w>', { desc = 'Rotate focus to the next window' })
vim.keymap.set('n', '<leader>ws', ':split<CR>', { desc = 'Split current window horizontal' })
vim.keymap.set('n', '<leader>wv', ':vsplit<CR>', { desc = 'Split current window vertical' })

vim.keymap.set('n', '<leader>tr', function()
  vim.cmd 'ToggleTerm'
end, { desc = 'Toggle terminal with ToggleTerm' })

vim.keymap.set('n', '<leader>tv', function()
  vim.cmd 'ToggleTerm direction=vertical size=100 name=vterm'
end, { desc = 'Toggle side terminal' })

vim.keymap.set('n', '<leader>ts', function()
  vim.cmd 'TermSelect'
end, { desc = 'Select from list of terminals' })

vim.keymap.set('n', '<leader>t2', function()
  vim.cmd '2ToggleTerm'
end, { desc = 'Spawn second terminal' })

vim.keymap.set('n', '<leader>t3', function()
  vim.cmd '3ToggleTerm'
end, { desc = 'Spawn third terminal' })

vim.keymap.set('t', '<C-n>', function()
  vim.cmd 'ToggleTerm'
end, { desc = 'Terminal mode toggle ' })

vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Exit to Normal mode' })
