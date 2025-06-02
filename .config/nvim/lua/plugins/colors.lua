return {
  {
    'EdenEast/nightfox.nvim',

    -- Specs
    lazy = false,
    priority = 1000,
    opts = {
      options = {
        styles = {
          comments = 'italic'
        }
      },
      palettes = {
        carbonfox = {
          fg1 = '#DFDFE0'
        }
      },
      groups = {
        carbonfox = {
          -- Native groups
          Folded = { fg = '#484849' },
          LineNr = { fg = '#585859' },
          FloatBorder = { fg = '#585859' },
          WinSeparator = { fg = '#282829' },

          -- Plugin groups
          NeoTreeNormal = { bg = '#161616' },
          NeoTreeDotfile = { fg = '#6E6F70' },
          NeoTreeFileName = { fg = '#DFDFE0' },
          NeoTreeRootName = { fg = '#BE95FF' }
        }
      }
    },

    init = function()
      vim.cmd.colorscheme('carbonfox')
    end
  },
  {
    'gbprod/nord.nvim',

    -- Specs
    lazy = false,
    priority = 1000,
    opts = {
      -- Override the default colors
      on_colors = function(colors)
        -- Snow Storm
        colors.snow_storm.origin = '#D1D8E5'
        colors.snow_storm.brighter = '#D8DEE9'
        colors.snow_storm.brightest = '#E5E9F0'
      end,

      -- Override the default groups
      on_highlights = function(highlights, colors)
        -- Treesitter groups
        -- Plugin groups
        highlights['IblScope'] = { fg = '#60728A' }
        highlights['BufferLineFill'] = { bg = '#242933' }
        highlights['NeoTreeDirectoryName'] = { fg = '#81A1C1' }

        -- Native groups
        highlights['Folded'] = { fg = '#616E88', bg = '#3B4252' }
      end
    }
  }
}

