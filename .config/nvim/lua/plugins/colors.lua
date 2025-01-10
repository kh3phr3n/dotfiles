return {
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
    },

    init = function()
      vim.cmd.colorscheme('nord')
    end
  }
}

