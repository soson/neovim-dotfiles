local opts = { noremap = false, silent = true }

-- find files using Telescope command-line sugar
local builtin = require('telescope.builtin')
vim.g.mapleader = ' '
vim.keymap.set('n', '<C-p>', builtin.git_files, opts)
vim.keymap.set('n', '<leader>fg', builtin.live_grep, opts)
vim.keymap.set('n', '<leader>fb', builtin.buffers, opts)
vim.keymap.set('n', '<leader>fh', builtin.help_tags, opts)
