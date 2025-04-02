return {
  'tpope/vim-fugitive',
  cmd = { 'Git', 'Gdiff', 'Gstatus', 'Gblame' }, -- These are the commands that trigger fugitive
  keys = {
    {
      '<leader>gs',
      ':horizontal G | only<CR>',
      desc = 'Git status in horizontal split',
      silent = true,
    },
    {
      '<leader>gd',
      ':vertical Gdiff<CR>',
      desc = 'Git diff in vertical split',
      silent = true,
    },
    {
      '<leader>gf',
      ':diffget //3<CR>',
      desc = 'Git diffget to resolve conflicts',
      silent = true,
    },
  },
  config = function()
    -- Custom configurations for vim-fugitive can go here
  end,
}
