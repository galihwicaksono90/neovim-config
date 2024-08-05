return {
  'tpope/vim-dadbod',
  {
    'kristijanhusak/vim-dadbod-ui',
    init = function()
      -- taggle dadbod-ui
      vim.keymap.set('n', '<leader>td', '<cmd>DBUIToggle<CR>')
    end,
  },
  'kristijanhusak/vim-dadbod-completion',
  {
    'tpope/vim-dadbod',
    opt = true,
    requires = {
      'kristijanhusak/vim-dadbod-ui',
      'kristijanhusak/vim-dadbod-completion',
    },
    config = function()
      require('config.dadbod').setup()
    end,
  },
}
