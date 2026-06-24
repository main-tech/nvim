-- vim-neon-dark: MattDMo's SublimeText Neon colorscheme translated for vim.
return {
  'nonetallt/vim-neon-dark',
  lazy = false,
  priority = 1000,
  init = function()
    vim.o.background = 'dark'
    vim.cmd.colorscheme 'neon-dark'
  end,
}
