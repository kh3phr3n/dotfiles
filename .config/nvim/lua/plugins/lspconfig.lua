return {
  'neovim/nvim-lspconfig',

  -- Specs
  dependencies = {
    'hrsh7th/cmp-nvim-lsp'
  },

  init = function()
    -- Keep consistency in UI
    require('lspconfig.ui.windows').default_options.border = 'rounded'

    -- Local imports
    local default_capabilities = require('cmp_nvim_lsp').default_capabilities()

    -- LSP handlers
    vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
      vim.lsp.handlers.hover, {
        border = 'rounded'
      }
    )

    vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
      vim.lsp.handlers.signature_help, {
        border = 'rounded'
      }
    )

    -- LSP configs
    vim.lsp.config('lua_ls', {
      capabilities = default_capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' }
          }
        }
      }
    })

    vim.lsp.config('ts_ls', {
      capabilities = default_capabilities,
      filetypes = {
        'vue',
        'javascript',
        'typescript'
      },
      init_options = {
        plugins = {
          {
            name = '@vue/typescript-plugin',
            location = '/usr/lib/node_modules/@vue/typescript-plugin',
            -- location = '/opt/homebrew/lib/node_modules/@vue/typescript-plugin',
            languages = {
              'vue',
              'javascript',
              'typescript'
            }
          }
        }
      }
    })
  end
}

