return {
  {
    'gbprod/nord.nvim',

    -- Specs
    lazy = false,
    config = true,
    priority = 1000,

    init = function()
      vim.cmd.colorscheme('nord')

      -- Custom colors
      vim.api.nvim_set_hl(0, '@module', { fg = '#CBD3E2' })
      vim.api.nvim_set_hl(0, '@variable', { fg = '#CBD3E2' })
      vim.api.nvim_set_hl(0, '@variable.member', { fg = '#CBD3E2' })

      vim.api.nvim_set_hl(0, 'BufferLineFill', { bg = '#242933' })
      vim.api.nvim_set_hl(0, 'NeoTreeFileName', { fg = '#CBD3E2' })
      vim.api.nvim_set_hl(0, 'NeoTreeDirectoryName', { fg = '#81A1C1' })
    end
  }
}

