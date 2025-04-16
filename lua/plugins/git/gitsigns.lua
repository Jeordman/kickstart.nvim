-- Adds git-related signs to the gutter, as well as utilities for managing changes
return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
  },
  config = function()
    -- Setup Gitsigns
    require('gitsigns').setup {
      -- Additional Gitsigns configuration can go here
    }

    -- Key mappings for navigating between changes
    vim.api.nvim_set_keymap('n', ']c', ':lua require"gitsigns".next_hunk()<CR>',
      { noremap = true, silent = true, desc = 'Next change' })
    vim.api.nvim_set_keymap('n', '[c', ':lua require"gitsigns".prev_hunk()<CR>',
      { noremap = true, silent = true, desc = 'Previous change' })
  end,
}
