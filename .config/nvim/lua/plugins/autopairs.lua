return {
  'windwp/nvim-autopairs',

  -- Specs
  event = 'InsertEnter',
  config = true,
  dependencies = {
    'hrsh7th/nvim-cmp'
  },

  init = function()
    -- Local imports
    local cmp = require('cmp')
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')

    -- Make autopairs and completion work together
    cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
  end
}

