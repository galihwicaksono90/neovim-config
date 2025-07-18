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
      { '<leader>a', group = '[A]i', icon = '' },
      { '<leader>b', group = '[B]uffers', icon = '' },
      { '<leader>t', group = '[T]oggle', icon = '' },
      { '<leader>f', group = '[F]ind', icon = '', mode = { 'n', 'v' }},
      { '<leader>g', group = '[G]it', icon = '' },
      { '<leader>l', group = '[L]SP', icon = '' },
      { '<leader>m', group = '[M]Harpoon', icon = '󱡅' },
      { '<leader>e', icon = '󰼙' },
      { '<leader>y', hidden = true},
      { '<leader>Y', hidden = true},
      { '<leader>P', hidden = true},
      { '<leader><leader>', hidden = true},
    },
  },
}
