if true then
  return {}
end

return {
  'luisiacc/gruvbox-baby',
  lazy = true,
  init = function()
    vim.g.gruvbox_baby_transparent_mode = true
    vim.g.gruvbox_baby_background_color = 'dark'
    vim.g.gruvbox_baby_telescope_theme = 1
    vim.cmd.colorscheme 'gruvbox-baby'
  end,
}
