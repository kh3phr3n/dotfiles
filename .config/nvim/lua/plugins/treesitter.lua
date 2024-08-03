return {
  'nvim-treesitter/nvim-treesitter',

  -- Specs
  main = 'nvim-treesitter.configs',
  opts = {
    -- A list of parser names, or 'all'
    ensure_installed = {
      'c', 'bash', 'make', 'csv', 'sql', 'toml', 'yaml',
      'xml', 'css', 'scss', 'html', 'lua', 'luap', 'luadoc', 'go', 'gomod', 'gosum', 'gowork',
      'vimdoc', 'markdown', 'markdown_inline', 'dockerfile', 'vue', 'json', 'jsdoc', 'prisma', 'javascript', 'typescript'
    },

    -- Automatically install parsers
    auto_install = true,
    -- Install parsers synchronously
    sync_install = false,

    highlight = {
      -- Colorize!
      enable = true,
      -- Run `:h syntax` and tree-sitter at the same time
      additional_vim_regex_highlighting = false
    }
  }
}

