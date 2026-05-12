return {
  {
    'ishiooon/codex.nvim',
    dependencies = { 'folke/snacks.nvim' },
    cmd = {
      'Codex',
      'CodexAdd',
      'CodexClose',
      'CodexDiffAccept',
      'CodexDiffDeny',
      'CodexFocus',
      'CodexOpen',
      'CodexSelectModel',
      'CodexSend',
      'CodexStart',
      'CodexStatus',
      'CodexStop',
      'CodexTreeAdd',
    },
    opts = {
      status_indicator = {
        enabled = false,
      },
    },
    keys = {
      { '<leader>x', nil, desc = 'AI/Codex' },
      { '<leader>xx', '<cmd>Codex<cr>', desc = 'Toggle Codex' },
      { '<leader>xf', '<cmd>CodexFocus<cr>', desc = 'Focus Codex' },
      { '<leader>xs', '<cmd>CodexSend<cr>', mode = 'v', desc = 'Send to Codex' },
      {
        '<leader>xs',
        '<cmd>CodexTreeAdd<cr>',
        desc = 'Add file from tree to Codex',
        ft = { 'NvimTree', 'neo-tree', 'oil' },
      },
    },
  },
}
