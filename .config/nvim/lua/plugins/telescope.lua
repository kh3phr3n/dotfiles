return {
  'nvim-telescope/telescope.nvim',

  -- Specs
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },

  init = function()
    vim.keymap.set('n', '<Leader>fb', '<Cmd>Telescope buffers<CR>')
    vim.keymap.set('n', '<Leader>fg', '<Cmd>Telescope git_files<CR>')
    vim.keymap.set('n', '<Leader>fr', '<Cmd>Telescope live_grep<CR>')
    vim.keymap.set('n', '<Leader>fh', '<Cmd>Telescope help_tags<CR>')
    vim.keymap.set('n', '<Leader>ff', '<Cmd>Telescope find_files<CR>')
  end
}

