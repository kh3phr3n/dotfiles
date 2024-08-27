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
    popup_border_style = 'rounded',
    default_component_configs = {
      git_status = {
        symbols = {
          -- Changes
          added = '',
          deleted = '',
          renamed = '',
          modified = '',
          -- Status
          staged = '',
          ignored = '',
          conflict = '',
          unstaged = '',
          untracked = ''
        }
      }
    }
  },

  init = function()
    vim.keymap.set('n', '<F1>', '<Cmd>Neotree toggle<CR>')
  end
}

