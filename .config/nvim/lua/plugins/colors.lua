return {
  {
    'gbprod/nord.nvim',

    -- Specs
    lazy = false,
    config = true,
    priority = 1000,

    init = function()
      vim.cmd.colorscheme('nord')

      -- Native groups
      vim.api.nvim_set_hl(0, 'Constant', { fg = '#D1D8E5' })
      vim.api.nvim_set_hl(0, 'Folded', { fg = '#616E88', bg = '#3B4252' })

      -- Plugin groups
      vim.api.nvim_set_hl(0, 'IblScope', { fg = '#60728A' })
      vim.api.nvim_set_hl(0, 'BufferLineFill', { bg = '#242933' })
      vim.api.nvim_set_hl(0, 'NeoTreeFileName', { fg = '#D1D8E5' })
      vim.api.nvim_set_hl(0, 'NeoTreeDirectoryName', { fg = '#81A1C1' })

      -- Treesitter groups
      vim.api.nvim_set_hl(0, '@module', { fg = '#D1D8E5' })
      vim.api.nvim_set_hl(0, '@variable', { fg = '#D1D8E5' })
      vim.api.nvim_set_hl(0, '@variable.member', { fg = '#D1D8E5' })
      vim.api.nvim_set_hl(0, '@punctuation.delimiter', { fg = '#D1D8E5' })
    end
  }
}

