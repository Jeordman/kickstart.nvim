return {
  'folke/zen-mode.nvim',
  config = function()
    vim.keymap.set('n', '<leader>zz', function()
      require('zen-mode').setup {
        window = {
          width = 95,
          options = {},
        },
      }
      require('zen-mode').toggle()

      if vim.g.colors_name == 'kanagawa' then
        vim.wo.number = true
        vim.wo.rnu = true
        vim.cmd.colorscheme 'rose-pine'
      else
        vim.opt.number = true
        vim.wo.rnu = false
        vim.cmd.colorscheme 'kanagawa'
      end
    end)
  end,
}
