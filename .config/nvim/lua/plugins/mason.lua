return {
  'williamboman/mason.nvim',

  -- Specs
  dependencies = {
    'williamboman/mason-lspconfig.nvim'
  },

  init = function()
    -- Setup order is important
    require('mason').setup({
      ui = {
        border = 'rounded'
      }
    })

    require('mason-lspconfig').setup({
      -- All servers set up via lspconfig are automatically installed
      automatic_installation = true,

      -- A list of servers to automatically install
      ensure_installed = {
        'gopls', 'lua_ls',
        'dockerls', 'docker_compose_language_service',
        'html', 'volar', 'cssls', 'jsonls', 'eslint', 'tsserver', 'tailwindcss'
      }
    })

    -- Open UI
    vim.keymap.set('n', '<F2>', '<Cmd>Mason<CR>')
  end
}

