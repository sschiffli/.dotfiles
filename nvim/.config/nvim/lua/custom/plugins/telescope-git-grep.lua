-- Telescope git-grep extension and custom keymaps
-- This extends the telescope configuration from kickstart.nvim

return {
  -- Just add the git-grep dependency to telescope
  'davvid/telescope-git-grep.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  config = function()
    -- Load the extension
    pcall(require('telescope').load_extension, 'git_grep')

    -- Set up custom keymaps that override defaults
    local builtin = require 'telescope.builtin'
    local git_grep = require('telescope').extensions.git_grep

    -- Override default file search to use git files
    vim.keymap.set('n', '<leader>sf', builtin.git_files, { desc = '[S]earch [F]iles (git)' })

    -- Override default grep to use git grep
    vim.keymap.set('n', '<leader>sg', git_grep.git_grep, { desc = '[S]earch by [G]rep (git)' })

    -- Add git status search
    vim.keymap.set('n', '<leader>sc', builtin.git_status, { desc = '[S]earch Git [C]hanges' })
  end,
}
