--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' ' -- Set <space> as the leader key
vim.g.maplocalleader = ' ' -- See `:help mapleader`
vim.g.have_nerd_font = true -- Set to true if you have a Nerd Font installed and selected in the terminal

require 'config.options'

require 'config.keymaps'

require 'config.autocommands'

require 'config.lazy'

-- [[ Configure and install plugins ]]
require('lazy').setup({
  { import = 'custom.plugins' },
  { import = 'kickstart.plugins' },
  { import = 'plugins' },
}, {
  ui = {
    icons = {},
  },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
