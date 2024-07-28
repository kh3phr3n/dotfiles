return {
  'lukas-reineke/indent-blankline.nvim',

  -- Specs
  main = 'ibl',
  opts = {
    -- Disabled at startup
    enabled = false,

    -- Look & Feel
    indent = {
      char = '¦'
    },
    scope = {
      show_end = false,
      show_start = false
    }
  },

  init = function()
    vim.keymap.set('n', '<F10>', '<Cmd>IBLToggle<CR>')
  end
}

