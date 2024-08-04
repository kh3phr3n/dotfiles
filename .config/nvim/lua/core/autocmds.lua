-- Set indentation to 2 spaces
vim.api.nvim_create_augroup('setIndent', { clear = true })
vim.api.nvim_create_autocmd('Filetype', {
  group = 'setIndent',
  command = 'setlocal tabstop=2 shiftwidth=2',
  pattern = { 'xml', 'html', 'xhtml', 'css', 'scss', 'javascript', 'typescript', 'lua', 'yaml', 'md', 'markdown' }
})

-- Attach LSP actions
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function()
    -- Buffer scope
    local opts = { buffer = true }

    -- g* keymaps
    vim.keymap.set('n', 'gh', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.keymap.set('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.keymap.set('n', 'gr', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
    vim.keymap.set('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    vim.keymap.set('n', 'gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    vim.keymap.set('n', 'gs', '<Cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    vim.keymap.set('n', 'go', '<Cmd>lua vim.lsp.buf.type_definition()<CR>', opts)

    -- F* keymaps
    vim.keymap.set('n', '<F5>', '<Cmd>lua vim.lsp.buf.rename()<CR>', opts)
    vim.keymap.set('n', '<F6>', '<Cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    vim.keymap.set('n', '<F7>', '<Cmd>lua vim.lsp.buf.format({ async = true })<CR>', opts)
  end
})

