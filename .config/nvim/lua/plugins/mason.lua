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
        width = 1.0,
        height = 0.9,
        border = 'rounded',
        icons = {
          package_pending = '○',
          package_installed = '●',
          package_uninstalled = '○'
        }
      }
    })

    require('mason-lspconfig').setup({
      -- All servers set up via lspconfig are automatically installed
      automatic_installation = true,

      -- A list of servers to automatically install
      ensure_installed = {
        'clangd', 'gopls', 'ts_ls', 'lua_ls',
        'dockerls', 'docker_compose_language_service',
        'cssls', 'jsonls', 'eslint', 'emmet_ls', 'prismals', 'tailwindcss'
      }
    })

    -- Open UI
    vim.keymap.set('n', '<F3>', '<Cmd>Mason<CR>')
  end
}

