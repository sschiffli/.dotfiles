-- Custom LSP configuration that extends kickstart.nvim defaults

-- Set up clangd manually since it's not managed by Mason
-- This should run after the main LSP configuration
vim.api.nvim_create_autocmd('User', {
  pattern = 'VeryLazy',
  callback = function()
    vim.lsp.enable 'clangd'
  end,
})
