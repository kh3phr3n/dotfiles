return {
  'nvim-neo-tree/neo-tree.nvim',

  -- Specs
  branch = 'v3.x',
  dependencies = {
    'MunifTanjim/nui.nvim',
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons'
  },
  opts = {
    enable_diagnostics = false,
    popup_border_style = 'rounded'
  },

  init = function()
    vim.keymap.set('n', '<F1>', '<Cmd>Neotree toggle<CR>')
  end
}

