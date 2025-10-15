-- Custom keymaps that extend kickstart.nvim defaults

-- Tmux sessionizer - open in new tmux window with Ctrl-f
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>', { desc = 'Open tmux sessionizer' })

-- Paste/delete without yanking
vim.keymap.set('x', '<leader>p', [["_dP]])
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])

-- Add word under cursor to global cspell dictionary
vim.keymap.set('n', '<leader>la', function()
  local word = vim.fn.expand '<cword>'
  local config_file = vim.fn.expand '~/.config/cspell/cspell.json'

  -- Create directory if it doesn't exist
  vim.fn.mkdir(vim.fn.fnamemodify(config_file, ':h'), 'p')

  -- Create or update cspell.json
  local config = {}
  if vim.fn.filereadable(config_file) == 1 then
    config = vim.fn.json_decode(vim.fn.readfile(config_file))
  else
    config = { version = '0.2', words = {} }
  end

  -- Add word if not already present
  if not vim.tbl_contains(config.words, word) then
    table.insert(config.words, word)
    vim.fn.writefile(vim.fn.split(vim.fn.json_encode(config), '\n'), config_file)
    print('Added "' .. word .. '" to global cspell dictionary')
  else
    print('"' .. word .. '" already in dictionary')
  end
end, { desc = '[L]int: [A]dd word to global dictionary' })
