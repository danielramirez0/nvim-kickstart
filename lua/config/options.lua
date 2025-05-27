-- [[ Setting options ]] See `:help vim.o` -- For more options, you can see `:help option-list`
vim.o.number = true -- Make line numbers default
vim.o.relativenumber = true -- Use relative numbers
vim.o.mouse = 'a' -- Enable mouse mode, can be useful for resizing splits for example!
vim.o.showmode = false -- Don't show the mode, since it's already in the status line
vim.schedule(function()
  -- Sync clipboard between OS and Neovim.
  --  Schedule the setting after `UiEnter` because it can increase startup-time.
  --  Remove this option if you want your OS clipboard to remain independent.
  --  See `:help 'clipboard'`
  vim.o.clipboard = 'unnamedplus'
end)
vim.o.breakindent = true -- Enable break indent
vim.o.undofile = true -- Save undo history
vim.o.ignorecase = true -- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.smartcase = true
vim.o.signcolumn = 'yes' -- Keep signcolumn on by default
vim.o.updatetime = 250 -- Decrease update time
vim.o.timeoutlen = 300 -- Decrease mapped sequence wait time
vim.o.splitright = true -- Configure how new splits should be opened
vim.o.splitbelow = true
vim.o.list = true -- Sets how neovim will display certain whitespace characters in the editor. --  See `:help 'list'` --  and `:help 'listchars'`
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' } -- Notice vim.opt, see :help lua-options, or :help lua-options-guide
vim.o.inccommand = 'split' -- Preview substitutions live, as you type!
vim.o.cursorline = true -- Show which line your cursor is on
vim.o.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor.
vim.o.confirm = true -- Prompt on fail due to unsaved changes in buffer See `:help 'confirm'`
vim.o.expandtab = true -- Set tab keypress to insert spaces
vim.o.tabstop = 4 -- Set tab spaces display size (will still be tabs if they were tabs).
vim.o.shiftwidth = 4 -- Set autoindent for tab
vim.o.softtabstop = 4 -- Make backspace delete number of spaces set when deleting tabs
