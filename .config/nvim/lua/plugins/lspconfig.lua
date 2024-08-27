return {
  'neovim/nvim-lspconfig',

  -- Specs
  dependencies = {
    'hrsh7th/cmp-nvim-lsp'
  },

  init = function()
    -- Local imports
    local lspconfig = require('lspconfig')
    local mason_lspconfig = require('mason-lspconfig')
    local default_capabilities = require('cmp_nvim_lsp').default_capabilities()

    -- Keep consistency in UI
    require('lspconfig.ui.windows').default_options.border = 'rounded'

    -- Mason LSP handlers
    mason_lspconfig.setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = default_capabilities
        })
      end,

      -- Custom handlers
      ['lua_ls'] = function()
        lspconfig['lua_ls'].setup({
          capabilities = default_capabilities,
          settings = {
            Lua = {
              diagnostics = {
                globals = { 'vim' }
              }
            }
          }
        })
      end,

      ['tsserver'] = function()
        lspconfig['tsserver'].setup({
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
    })
  end
}

