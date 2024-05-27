return {
  -- dir = '~/Documents/plugins/codestats.nvim/',
  'galihwicaksono90/codestats.nvim',
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
    {
      'rcarriga/nvim-notify',
      opts = {

        background_colour = '#000000',
      },
    },
  },
  event = { 'TextChanged', 'InsertEnter' },
  cmd = { 'CodeStatsXpSend', 'CodeStatsProfileUpdate', 'CodeStatsToggle', 'CodeStatsPrintStatus' },
  config = function()
    require('codestats').setup {
      -- username = "gorillahobo", -- needed to fetch profile data
      -- base_url = "https://codestats.net", -- codestats.net base url
      -- api_key = "SFMyNTY.WjI5eWFXeHNZV2h2WW04PSMjTWpBNE5qZz0.NOCbNGBA6Y7TtGR2T0DCvbXRTaLxltQchBcO8PYglpg",
      username = 'galih.wicaksono', -- needed to fetch profile data
      base_url = 'https://exp.seni.cloud', -- codestats.net base url
      api_key = 'SFMyNTY.WjJGc2FXZ3VkMmxqWVd0emIyNXYjI01UTXk.A-oo07clbdoThpFoMXBg9jFNkDL_IgGl2CCAhYqDOHQ',
      send_on_exit = true, -- send xp on nvim exit
      send_on_timer = true, -- send xp on timer
      timer_interval = 60000, -- timer interval in milliseconds (minimum 1000ms to prevent DDoSing codestat.net servers)
      curl_timeout = 5, -- curl request timeout in seconds
      active = true,
    }
  end,
  init = function()
    vim.keymap.set('n', '<leader>tc', '<cmd>CodeStatsToggle<CR>')
    vim.keymap.set('n', '<leader>tC', '<cmd>CodeStatsPrintStatus<CR>')
  end,
}
