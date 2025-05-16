-- Diagnostics setup
vim.diagnostic.enable(false)
vim.diagnostic.config({
  virtual_text = false,
  severity_sort = true,
  float = {
    source = 'always',
    border = 'rounded'
  },
  signs = {
    text = {
      [vim.diagnostic.severity.HINT] = '●',
      [vim.diagnostic.severity.INFO] = '●',
      [vim.diagnostic.severity.WARN] = '●',
      [vim.diagnostic.severity.ERROR] = '●'
    }
  }
})

-- Diagnostics are not exclusive to lsp servers
vim.keymap.set('n', '[d', '<Cmd>lua vim.diagnostic.goto_prev()<CR>')
vim.keymap.set('n', ']d', '<Cmd>lua vim.diagnostic.goto_next()<CR>')
vim.keymap.set('n', 'gl', '<Cmd>lua vim.diagnostic.open_float()<CR>')
vim.keymap.set('n', '<F8>', '<Cmd>lua vim.diagnostic.enable(not vim.diagnostic.is_enabled())<CR>')

