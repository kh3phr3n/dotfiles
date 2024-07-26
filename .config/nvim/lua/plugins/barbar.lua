return {
  'romgrk/barbar.nvim',

  -- Specs
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },

  init = function()
    vim.g.barbar_auto_setup = false
  end
}

