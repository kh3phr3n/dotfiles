return {
  {
    'shaunsingh/nord.nvim',

    -- Specs
    lazy = false,
    priority = 1000,

    config = function()
      vim.cmd('colorscheme nord')
    end
  },

  {
    'folke/tokyonight.nvim'
  },

  {
    'navarasu/onedark.nvim'
  }
}

