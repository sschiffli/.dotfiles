return {
  'sindrets/diffview.nvim',
  keys = {
    { '<leader>go', '<cmd>DiffviewOpen<CR>', desc = '[G]it Diff [O]pen' },
    { '<leader>gc', '<cmd>DiffviewClose<CR>', desc = '[G]it Diff [C]lose' },
    { '<leader>gh', '<cmd>DiffviewFileHistory<CR>', desc = '[G]it File [H]istory' },
    { '<leader>gf', '<cmd>DiffviewFileHistory %<CR>', desc = '[G]it Current [F]ile History' },
    { '<leader>gt', '<cmd>DiffviewToggleFiles<CR>', desc = '[G]it Diff [T]oggle Files' },
  },
}
