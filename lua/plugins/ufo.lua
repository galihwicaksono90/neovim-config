-- - if true then
-- --   return {}
-- -- end
--
return {
  'kevinhwang91/nvim-ufo',
  dependencies = {
    { 'kevinhwang91/promise-async' },
    -- {
    --   'luukvbaal/statuscol.nvim',
    --   config = function()
    --     local builtin = require 'statuscol.builtin'
    --     require('statuscol').setup {
    --       -- configuration goes here, for example:
    --       relculright = true,
    --       segments = {
    --         { text = { builtin.foldfunc }, click = 'v:lua.ScFa' },
    --         {
    --           sign = { name = { 'Diagnostic' }, maxwidth = 2, auto = true },
    --           click = 'v:lua.ScSa',
    --         },
    --         { text = { builtin.lnumfunc }, click = 'v:lua.ScLa' },
    --         {
    --           sign = { name = { '.*' }, maxwidth = 2, colwidth = 1, auto = true, wrap = true },
    --           click = 'v:lua.ScSa',
    --         },
    --       },
    --     }
    --   end,
    -- },
    {
      'luukvbaal/statuscol.nvim',
      opts = function()
        local builtin = require 'statuscol.builtin'
        return {
          setopt = true,
          -- override the default list of segments with:
          -- number-less fold indicator, then signs, then line number & separator
          segments = {
            { text = { builtin.foldfunc }, click = 'v:lua.ScFa' },
            { text = { '%s' }, click = 'v:lua.ScSa' },
            {
              text = { builtin.lnumfunc, ' ' },
              condition = { true, builtin.not_empty },
              click = 'v:lua.ScLa',
            },
          },
        }
      end,
    },
  },
  event = 'VeryLazy',
  opts = {
    -- INFO: Uncomment to use treeitter as fold provider, otherwise nvim lsp is used
    -- provider_selector = function(bufnr, filetype, buftype)
    --   return { "treesitter", "indent" }
    -- end,
    open_fold_hl_timeout = 400,
    -- close_fold_kinds_for_ft = { 'imports', 'comment' },
    preview = {
      win_config = {
        border = { '', '─', '', '', '', '─', '', '' },
        -- winhighlight = "Normal:Folded",
        winblend = 0,
      },
      mappings = {
        scrollU = '<C-u>',
        scrollD = '<C-d>',
        jumpTop = '[',
        jumpBot = ']',
      },
    },
  },
  config = function(_, opts)
    require('ufo').setup(opts)
    vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
    vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
    vim.keymap.set('n', 'zm', require('ufo').closeFoldsWith)
    vim.keymap.set('n', 'zr', require('ufo').openFoldsExceptKinds)
    vim.keymap.set('n', 'zp', function()
      local winid = require('ufo').peekFoldedLinesUnderCursor()
      -- if not winid then
      --   -- vim.lsp.buf.hover()
      --   vim.cmd [[ Lspsaga hover_doc ]]
      -- end
    end)
  end,

  init = function()
    vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
    vim.o.foldcolumn = '1' -- '0' is not bad
    vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true
  end,
}
