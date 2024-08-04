return {
  'lewis6991/gitsigns.nvim',

  -- Specs
  event = 'VeryLazy',
  config = true,

  init = function()
    vim.keymap.set('n', '<Leader>gr', '<Cmd>Gitsigns reset_hunk<CR>')
    vim.keymap.set('n', '<Leader>gR', '<Cmd>Gitsigns reset_buffer<CR>')
    vim.keymap.set('n', '<Leader>gp', '<Cmd>Gitsigns preview_hunk<CR>')
  end
}

