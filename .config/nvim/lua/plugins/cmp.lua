return {
  'hrsh7th/nvim-cmp',

  -- Specs
  dependencies = {
    -- Cmp*
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-buffer',

    -- Third-party
    'L3MON4D3/LuaSnip',
    'onsails/lspkind.nvim',
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets'
  },

  init = function()
    -- Local imports
    local cmp = require('cmp')
    local luasnip = require('luasnip')
    require('luasnip.loaders.from_vscode').lazy_load()

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered()
      },
      sources = cmp.config.sources({
        -- Order by list
        { name = 'path' },
        { name = 'nvim_lsp' },
        { name = 'luasnip', keyword_length = 2 },
        { name = 'buffer', keyword_length = 3 }
      }),
      mapping = cmp.mapping.preset.insert({
        -- Basics
        ['<C-e>'] = cmp.mapping.abort(),
        ['<C-Space>'] = cmp.mapping.complete(),

        -- Documentation
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),

        -- Super-Tab like
        ['<CR>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            if luasnip.expandable() then luasnip.expand() else cmp.confirm({ select = true }) end
          else
            fallback()
          end
        end),

        ['<Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then cmp.select_next_item() elseif luasnip.locally_jumpable(1) then luasnip.jump(1) else fallback() end
        end, { 'i', 's' }),

        ['<S-Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then cmp.select_prev_item() elseif luasnip.locally_jumpable(-1) then luasnip.jump(-1) else fallback() end
        end, { 'i', 's' })
      })
    })
  end
}

