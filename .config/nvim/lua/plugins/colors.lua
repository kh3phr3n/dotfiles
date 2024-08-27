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
      -- Custom colors
      vim.api.nvim_set_hl(0, '@variable', { fg = '#9EAEF0' })
    end
  },

  {
    'catppuccin/nvim'
  }
}

