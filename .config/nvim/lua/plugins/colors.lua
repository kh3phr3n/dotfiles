return {
  {
    'folke/tokyonight.nvim',

    -- Specs
    lazy = false,
    priority = 1000,

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

