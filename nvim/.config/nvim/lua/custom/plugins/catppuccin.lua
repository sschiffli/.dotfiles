-- Custom colorscheme configuration
-- This overrides the default tokyonight theme from kickstart.nvim

return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000, -- Load before other start plugins
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('catppuccin').setup {
      auto_integrations = true,
    }

    -- Load the colorscheme
    -- Options: catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
    vim.cmd.colorscheme 'catppuccin-latte'
  end,
}
