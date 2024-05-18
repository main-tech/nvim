return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    { 'nvim-tree/nvim-web-devicons' },
  },
  config = function()
    require('nvim-tree').setup {
      sync_root_with_cwd = true,
      diagnostics = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
        debounce_delay = 50,
        severity = {
          min = vim.diagnostic.severity.HINT,
          max = vim.diagnostic.severity.ERROR,
        },
        icons = {
          hint = '',
          info = '',
          warning = '',
          error = '',
        },
      },
      modified = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
      },
    }
  end,
}
