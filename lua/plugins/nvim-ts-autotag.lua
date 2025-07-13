if true then
  return {}
end

return { 'windwp/nvim-ts-autotag',
  config = function()
    require('nvim-ts-autotag').setup {
      opts = {
        enable_close_on_slash = true,
        enable_rename = true,
        enable_close = true,
      },
    }
  end,
}
