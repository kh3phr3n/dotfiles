return {
  'folke/trouble.nvim',

  -- Specs
  opts = {
    focus = true
  },

  init = function()
    vim.keymap.set('n', '<Leader>tD', '<Cmd>Trouble diagnostics toggle<CR>')
    vim.keymap.set('n', '<Leader>td', '<Cmd>Trouble diagnostics toggle filter.buf=0<CR>')
    vim.keymap.set('n', '<Leader>ts', '<Cmd>Trouble symbols toggle focus=false win.size=100<CR>')
  end
}

