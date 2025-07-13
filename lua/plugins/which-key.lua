return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  opts = {
    -- delay between pressing a key and opening which-key (milliseconds)
    -- this setting is independent of vim.o.timeoutlen
    delay = 0,
    icons = {
      -- set icon mappings to true if you have a Nerd Font
      mappings = vim.g.have_nerd_font,
      -- If you are using a Nerd Font: set icons.keys to an empty table which will use the
      -- default which-key.nvim defined Nerd Font icons, otherwise define a string table
      keys = vim.g.have_nerd_font and {} or {
        Up = '<Up> ',
        Down = '<Down> ',
        Left = '<Left> ',
        Right = '<Right> ',
        C = '<C-…> ',
        M = '<M-…> ',
        D = '<D-…> ',
        S = '<S-…> ',
        CR = '<CR> ',
        Esc = '<Esc> ',
        ScrollWheelDown = '<ScrollWheelDown> ',
        ScrollWheelUp = '<ScrollWheelUp> ',
        NL = '<NL> ',
        BS = '<BS> ',
        Space = '<Space> ',
        Tab = '<Tab> ',
        F1 = '<F1>',
        F2 = '<F2>',
        F3 = '<F3>',
        F4 = '<F4>',
        F5 = '<F5>',
        F6 = '<F6>',
        F7 = '<F7>',
        F8 = '<F8>',
        F9 = '<F9>',
        F10 = '<F10>',
        F11 = '<F11>',
        F12 = '<F12>',
      },
    },

    -- Document existing key chains
    spec = {
      { '<leader>s', group = '[S]earch' },
      { '<leader>b', group = '[B]uffers' },
      { '<leader>t', group = '[T]oggle' },
      { '<leader>f', group = '[F]ind' },
      { '<leader>g', group = '[G]it' },
      { '<leader>l', group = '[L]SP' },
      { '<leader>m', group = '[M]Harpoon' },
      { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
    },
  },
}
--
-- return { -- Useful plugin to show you pending keybinds.
--   'folke/which-key.nvim',
--   event = 'VimEnter', -- Sets the loading event to 'VimEnter'
--   config = function() -- This is the function that runs, AFTER loading
--     require('which-key').setup()
--
--     -- Document existing key chains
--     require('which-key').register {
--       -- ['<leader>b'] = { name = '[B]uffer', _ = 'which_key_ignore' },
--       -- ['<leader>f'] = { name = '[F]ind', _ = 'which_key_ignore' },
--       -- ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
--       -- ['<leader>l'] = { name = '[L]sp', _ = 'which_key_ignore' },
--       -- ['<leader>t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
--       { '<leader>b', group = '[B]uffer' },
--       { '<leader>b_', hidden = true },
--       { '<leader>f', group = '[F]ind' },
--       { '<leader>f_', hidden = true },
--       { '<leader>g', group = '[G]it' },
--       { '<leader>g_', hidden = true },
--       { '<leader>l', group = '[L]sp' },
--       { '<leader>l_', hidden = true },
--       { '<leader>t', group = '[T]oggle' },
--       { '<leader>t_', hidden = true },
--       { '<leader>h', desc = 'Git [H]unk', mode = 'v' },
--     }
--     -- visual mode
--     -- require('which-key').register({
--     --   ['<leader>h'] = { 'Git [H]unk' },
--     -- }, { mode = 'v' })
--     require 'which-key'
--   end,
-- }
