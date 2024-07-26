return {
  'nvim-treesitter/nvim-treesitter',

  -- Specs
  build = ':TSUpdate',

  config = function()
    require('nvim-treesitter.configs').setup({
      -- A list of parser names, or 'all'
      ensure_installed = { 'c', 'go', 'bash', 'jsdoc', 'vimdoc', 'dockerfile', 'javascript', 'typescript' },

      -- Install parsers synchronously
      sync_install = false,
      -- Automatically install missing parsers
      auto_install = true,

      highlight = {
        -- Colorize!
        enable = true,
        -- Run `:h syntax` and tree-sitter at the same time
        additional_vim_regex_highlighting = true
      }
    })
  end
}

