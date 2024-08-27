return {
  'folke/which-key.nvim',

  -- Specs
  event = 'VeryLazy',
  opts = {
    icons = {
      rules = false
    }
  },

  init = function()
    vim.keymap.set('n', '<F4>', '<Cmd>WhichKey<CR>')
  end
}

