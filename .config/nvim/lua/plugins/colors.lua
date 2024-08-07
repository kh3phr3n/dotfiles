return {
  {
    'folke/tokyonight.nvim',

    -- Specs
    lazy = false,
    priority = 1000,
    opts = {
      on_colors = function(colors)
        colors.bg_float = colors.bg
      end
    },

    init = function()
      vim.cmd('colorscheme tokyonight-storm')
    end
  },

  {
    'navarasu/onedark.nvim'
  },

  {
    'catppuccin/nvim'
  }
}

