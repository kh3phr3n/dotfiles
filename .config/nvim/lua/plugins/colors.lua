return {
  {
    'folke/tokyonight.nvim',

    -- Specs
    lazy = false,
    priority = 1000,

    config = function()
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

