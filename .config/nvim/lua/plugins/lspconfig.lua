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
    local cmp_nvim_lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

    -- Mason LSP handlers
    mason_lspconfig.setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = cmp_nvim_lsp_capabilities
        })
      end
    })
  end
}

