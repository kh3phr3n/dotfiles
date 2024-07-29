return {
  'lewis6991/gitsigns.nvim',

  -- Specs
  event = 'VeryLazy',
  config = true,

  init = function()
    vim.keymap.set('n', 'gr', '<Cmd>Gitsigns reset_hunk<CR>')
    vim.keymap.set('n', 'gR', '<Cmd>Gitsigns reset_buffer<CR>')
    vim.keymap.set('n', 'gp', '<Cmd>Gitsigns preview_hunk<CR>')
  end
}

