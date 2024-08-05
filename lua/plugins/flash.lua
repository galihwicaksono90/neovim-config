return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  ---@type Flash.Config
  opts = {},
  -- stylua: ignore
  keys = {
    { ",", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    -- { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    -- { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    -- { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    -- { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
  config = function()
    vim.api.nvim_set_hl(0, 'FlashCursor', { link = 'Constant' })
    vim.api.nvim_set_hl(0, 'FlashLabel', { link = 'WarningMsg' })
    vim.api.nvim_set_hl(0, 'FlashMatch', { link = 'Comment' })
    vim.api.nvim_set_hl(0, 'FlashCurrent', { link = 'Constant' })
  end,
}
