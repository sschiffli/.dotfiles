-- Custom keymaps that extend kickstart.nvim defaults

-- Tmux sessionizer - open in new tmux window with Ctrl-f
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>', { desc = 'Open tmux sessionizer' })
