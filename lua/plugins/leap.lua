if true then
  return {}
end

return {
  {
    'ggandor/flit.nvim',
    keys = function()
      ---@type LazyKeys[]
      local ret = {}
      for _, key in ipairs { 'f', 'F', 't', 'T' } do
        ret[#ret + 1] = { key, mode = { 'n', 'o' }, desc = key }
      end
      return ret
    end,
    opts = { labeled_modes = 'nx' },
    dependencies = {
      'ggandor/leap.nvim',
      event = 'VeryLazy',
      config = function(_, opts)
        local leap = require 'leap'
        -- for k, v in pairs(opts) do
        --   leap.opts[k] = v
        -- end
        -- leap.add_default_mappings(true)

        leap.opts.case_sensitive = false

        ----------------------------------------------------------------------------------------------------
        vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' }) -- or some grey
        vim.api.nvim_set_hl(0, 'LeapMatch', {
          -- For light themes, set to 'black' or similar.
          fg = '#ebdbb2',
          bold = true,
          nocombine = true,
        })
        -- Of course, specify some nicer shades instead of the default "red" and "blue".
        vim.api.nvim_set_hl(0, 'LeapLabelPrimary', {
          fg = '#fabd2f',
          bold = true,
          nocombine = true,
        })
        vim.api.nvim_set_hl(0, 'LeapLabelSecondary', {
          fg = '#83a598',
          bold = true,
          nocombine = true,
        })
        vim.api.nvim_set_hl(0, 'Cursor', { reverse = false })

        -- vim.cmd.h('Cursor', 'blend=100')
        -- vim.opt.guicursor:append { 'a:Cursor/lCursor' }
        -- Try it without this setting first, you might find you don't even miss it.
        -- require('leap').opts.highlight_unlabeled_phase_one_targets = true
        --
      end,
      init = function()
        vim.keymap.set('n', '<leap>', '<Plug>(leap)')
        -- vim.keymap.set({ 'n', 'x', 'o' }, 'gs', '<Plug>(leap-forward)')
        -- vim.keymap.set({ 'n', 'x', 'o' }, 'gS', '<Plug>(leap-backward)')
        -- vim.keymap.set({ 'n', 'x', 'o' }, 'gw', '<Plug>(leap-from-window)')
      end,
      dependencies = {
        'tpope/vim-repeat',
      },
    },
  },
}
