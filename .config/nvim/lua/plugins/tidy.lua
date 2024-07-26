return {
  'mcauley-penney/tidy.nvim',

  -- Specs
  opts = {
    enabled_on_save = true,
    filetype_exclude = { 'markdown' }
  },

  init = function()
    vim.keymap.set('n', '<Leader>tt', require('tidy').toggle)
  end
}

