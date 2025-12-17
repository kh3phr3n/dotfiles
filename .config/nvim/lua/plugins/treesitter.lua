return {
  'nvim-treesitter/nvim-treesitter',

  -- Specs
  lazy = false,
  branch = 'master',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  opts = {
    -- Nvim includes these parsers
    ignore_install = {
      'c', 'lua', 'bash', 'python', 'query',
      'vim', 'vimdoc', 'markdown', 'markdown_inline'
    },

    -- A list of parser names, or 'all'
    ensure_installed = {
      'cpp', 'luap', 'luadoc', 'go', 'gomod', 'gosum', 'gowork',
      'csv', 'sql', 'toml', 'yaml', 'json', 'make', 'dockerfile',
      'css', 'scss', 'html', 'vue', 'jsdoc', 'prisma', 'javascript', 'typescript'
    },

    -- Automatically install parsers
    auto_install = true,
    -- Install parsers synchronously
    sync_install = false,

    indent = {
      enable = true
    },
    highlight = {
      -- Colorize!
      enable = true,
      -- Run `:h syntax` and tree-sitter at the same time
      additional_vim_regex_highlighting = false
    }
  }
}

