-- Remove trailing whitespace on save
return {
  {
    'trim-whitespace',
    dir = vim.fn.stdpath 'config',
    config = function()
      vim.api.nvim_create_autocmd('BufWritePre', {
        desc = 'Remove trailing whitespace on save',
        group = vim.api.nvim_create_augroup('trim-whitespace', { clear = true }),
        callback = function()
          local save = vim.fn.winsaveview()
          vim.cmd [[%s/\s\+$//e]]
          vim.fn.winrestview(save)
        end,
      })
    end,
  },
}
