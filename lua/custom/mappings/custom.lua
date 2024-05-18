vim.keymap.set('n', '<F7>', '<cmd>ToggleTerm<CR>', { desc = 'Toggle nvim tree file explorer' })
vim.keymap.set('n', '<A-.>', '<cmd>BufferNext<CR>')
vim.keymap.set('n', '<A-,>', '<cmd>BufferPrevious<CR>')
vim.keymap.set('n', '<leader>bC', '<cmd>%bdelete|edit #|normal`"<CR>', { desc = 'Delete all buffer except from the open one' })
