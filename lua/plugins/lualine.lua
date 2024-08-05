if true then
  return {}
end

return {
  'nvim-lualine/lualine.nvim',
  disabled = true,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local lualine = require 'lualine'
    -- local theme = require 'lualine.themes.gruvbox-material'
    lualine.setup {
      options = {
        theme = 'gruvbox-material',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
    }
  end,
}
