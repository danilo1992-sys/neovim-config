return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function()
      local lualine = require("lualine")
      local lazy_status = require("lazy.status")
      
      lualine.setup({
        options = {
          theme = 'solarized_dark',
          icons_enabled = true,
          component_separators = { left = '', right = ''},
          section_separators = { left = '', right = ''},
          globalstatus = true,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
        }
      })
  end,
}
