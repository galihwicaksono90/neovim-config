vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
-- vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>ld', vim.diagnostic.open_float, { desc = 'LSP: Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>lq', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- save file
vim.keymap.set('n', '<leader>w', '<Cmd>w<CR>', { desc = 'Save file' })

-- quit
vim.keymap.set('n', '<leader>q', '<Cmd>confirm q<CR>', { desc = 'Quit window' })
vim.keymap.set('n', '<leader>Q', '<Cmd>confirm qall<CR>', { desc = 'Exit Neovim' })

-- buffers
vim.keymap.set('n', '<leader>c', function()
  require('config.buffer').close()
end, { desc = 'Close current buffer' })
vim.keymap.set('n', '<leader>bc', function()
  require('config.buffer').close_all(true)
end, { desc = 'Close all buffers except for current' })
vim.keymap.set('n', '<leader>bC', function()
  require('config.buffer').close_all(false)
end, { desc = 'Close all buffers' })

-- buffers
vim.keymap.set('n', '<S-l>', '<Cmd>bn<CR>')
vim.keymap.set('n', '<S-h>', '<Cmd>bp<CR>')

-- misc
vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', '<leader>y', [["+y]], { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader>Y', [["+Y]], { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader>d', [[" d]], { desc = 'which_key_ignore' })

vim.keymap.set('v', '<leader>y', [["+y]], { desc = 'which_key_ignore' })

vim.keymap.set('x', '<leader>p', [["_dP]], { desc = 'which_key_ignore' })

-- -- Exit terminal mode in tse builtin terminal with a shortcut that is a bit easier
-- -- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- -- is not what someone will guess without a bit more experience.
-- --
-- -- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- -- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
