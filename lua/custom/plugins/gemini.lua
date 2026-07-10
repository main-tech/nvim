return {
  {
    'vaijab/gemini-cli.nvim',
    build = ':GeminiBuild',
    dependencies = { 'akinsho/toggleterm.nvim' },
    config = function()
      require('gemini').setup({})

      -- Define Gemini user command to launch the CLI inside Neovim
      local Terminal = require('toggleterm.terminal').Terminal
      local gemini_terminal = Terminal:new({
        cmd = 'gemini',
        hidden = true,
        direction = 'vertical',
        size = 80,
        close_on_exit = true,
      })

      vim.api.nvim_create_user_command('Gemini', function()
        gemini_terminal:toggle()
      end, {})
    end,
    keys = {
      { '<leader>g', nil, desc = 'AI/Gemini' },
      { '<leader>gg', '<cmd>Gemini<cr>', desc = 'Toggle Gemini' },
      { '<leader>ga', '<cmd>GeminiDiffAccept<cr>', desc = 'Gemini Accept Diff' },
      { '<leader>gd', '<cmd>GeminiDiffDeny<cr>', desc = 'Gemini Deny Diff' },
    },
  },
}
