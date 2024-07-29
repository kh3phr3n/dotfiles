return {
  'akinsho/bufferline.nvim',

  -- Specs
  event = 'VeryLazy',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  opts = {
    options = {
      mode = 'tabs'
    }
  },

  init = function()
    vim.keymap.set('n', '<C-t>', '<Cmd>tabnew<CR>')
    vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>')
    vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>')
  end
}

