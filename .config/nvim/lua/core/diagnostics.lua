-- Diagnostics setup
vim.diagnostic.enable(false)
vim.diagnostic.config({
  severity_sort = true,
  float = {
    source = 'always'
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
vim.keymap.set('n', 'gl', '<Cmd>lua vim.diagnostic.open_float()<CR>')
vim.keymap.set('n', '[d', '<Cmd>lua vim.diagnostic.jump({count=1, float=true})<CR>')
vim.keymap.set('n', ']d', '<Cmd>lua vim.diagnostic.jump({count=-1, float=true})<CR>')
vim.keymap.set('n', '<F8>', '<Cmd>lua vim.diagnostic.enable(not vim.diagnostic.is_enabled())<CR>')

