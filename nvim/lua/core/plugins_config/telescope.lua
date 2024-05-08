local builtin = require('telescope.builtin')

vim.keymap.set('n', '<c-p>', builtin.find_files, {})
vim.keymap.set('n', '<space><space>', builtin.live_grep, {})
vim.keymap.set('n', '<space>fg', builtin.buffers, {})
vim.keymap.set('n', '<space>fh', builtin.help_tags, {})
