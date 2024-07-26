-- Set indentation to 2 spaces
vim.api.nvim_create_augroup('setIndent', { clear = true })
vim.api.nvim_create_autocmd('Filetype', {
  group = 'setIndent',
  command = 'setlocal tabstop=2 shiftwidth=2',
  pattern = { 'xml', 'html', 'xhtml', 'css', 'scss', 'javascript', 'typescript', 'lua', 'yaml', 'md', 'markdown' }
})

