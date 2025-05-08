return { -- code formatter
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format {
          async = true,
          lsp_fallback = 'always',
          range = vim.fn.mode() == 'v' and {
            start = vim.api.nvim_buf_get_mark(0, '<'),
            ['end'] = vim.api.nvim_buf_get_mark(0, '>'),
          } or nil,
        }
      end,
      mode = { 'n', 'v' },
      desc = '[F]ormat buffer or selection',
    },
  },
  opts = {
    notify_on_error = false,
    -- format_on_save = {
    --   timeout_ms = 500,
    --   lsp_fallback = true,
    --   stop_after_first = true,
    -- },
    formatters_by_ft = {
      lua = { 'stylua' },
      javascript = { 'prettierd', 'eslint_d' },
      typescript = { 'prettierd', 'eslint_d' },
      javascriptreact = { 'prettierd', 'eslint_d' },
      typescriptreact = { 'prettierd', 'eslint_d' },
      json = { 'prettierd' },
      yaml = { 'prettierd' },
      markdown = { 'prettierd' },
      css = { 'prettierd', 'stylelint' },
      scss = { 'prettierd', 'stylelint' },
      less = { 'prettierd', 'stylelint' },
      html = { 'prettierd', 'htmlbeautifier' },
    },
  },
}
