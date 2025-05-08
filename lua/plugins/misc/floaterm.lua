return {
  'voldikss/vim-floaterm',
  -- config = function()
  --   require('floaterm').setup {
  --     -- Other Floaterm options
  --     -- ... more Floaterm options ...
  --   }
  -- end,
  keys = {
    -- You might want a global keybinding to toggle Floaterm as well
    { '<leader>ft', '<cmd>FloatermToggle<CR>',                                                desc = 'Toggle Floaterm' },
    { '<leader>ga', '<cmd>FloatermNew --height=0.95 --width=0.85 --name=LazyGit lazygit<CR>', desc = 'Open Lazygit in Floaterm' },
  },
}
