-- return {
--   'eddyekofo94/gruvbox-flat.nvim',
--   priority = 1000,
--   enabled = true,
--   init = function()
--     vim.g.gruvbox_flat_style = 'dark'
--     vim.g.gruvbox_transparent = true
--     vim.g.gruvbox_hide_inactive_statusline = true
--   end,
-- }

return {
  'sainnhe/gruvbox-material',
  init = function()
    vim.g.gruvbox_material_transparent_background = 1
    -- vim.g.gruvbox_material_dim_inactive_windows = 1
    -- p
    -- vim.g.gruvbox_material_visual = 'blue background'
    -- vim.g.gruvbox_material_menu_selection_background = 'blue'
    -- vim.g.gruvbox_material_disable_terminal_colors = 1
    -- vim.g.gruvbox_material_cursor = 'purple'
  end,
}
