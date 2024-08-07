-- Thanks to VonHeikemen
-- https://gist.github.com/VonHeikemen/8fc2aa6da030757a5612393d0ae060bd
local sign_define = function(opts)
  vim.fn.sign_define(opts.name, { text = opts.text, texthl = opts.name })
end

-- Diagnostics setup
vim.diagnostic.enable(false)
vim.diagnostic.config({
  virtual_text = false,
  severity_sort = true,
  float = {
    source = 'always',
    border = 'rounded'
  }
})

-- LSP handlers
vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    border = 'rounded'
  }
)

vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
  vim.lsp.handlers.signature_help, {
    border = 'rounded'
  }
)

-- Standardize with Lazy and Mason
sign_define({ name = 'DiagnosticSignInfo', text = '●' })
sign_define({ name = 'DiagnosticSignHint', text = '●' })
sign_define({ name = 'DiagnosticSignWarn', text = '●' })
sign_define({ name = 'DiagnosticSignError', text = '●' })

-- Diagnostics are not exclusive to lsp servers
vim.keymap.set('n', '[d', '<Cmd>lua vim.diagnostic.goto_prev()<CR>')
vim.keymap.set('n', ']d', '<Cmd>lua vim.diagnostic.goto_next()<CR>')
vim.keymap.set('n', 'gl', '<Cmd>lua vim.diagnostic.open_float()<CR>')
vim.keymap.set('n', '<F8>', '<Cmd>lua vim.diagnostic.enable(not vim.diagnostic.is_enabled())<CR>')

