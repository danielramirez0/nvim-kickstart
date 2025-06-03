-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`
vim.api.nvim_create_autocmd('TextYankPost', {
  --  See `:help vim.hl.on_yank()`
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Set mdx to markdown filetype
vim.api.nvim_create_autocmd({ 'BufReadPost', 'BufNewFile' }, {
  pattern = '*.mdx',
  callback = function()
    vim.bo.filetype = 'markdown'
  end,
  desc = 'Set .mdx files to markdown filetype',
})
