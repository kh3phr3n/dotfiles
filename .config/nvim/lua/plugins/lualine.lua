return {
  'nvim-lualine/lualine.nvim',

  -- Specs
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },

  config = function()
    require('lualine').setup({
      options = {
        section_separators = '',
        component_separators = ''
      }
    })
  end
}

