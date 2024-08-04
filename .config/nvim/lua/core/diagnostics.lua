-- Thanks to VonHeikemen
-- https://gist.github.com/VonHeikemen/8fc2aa6da030757a5612393d0ae060bd
local sign = function(opts)
  vim.fn.sign_define(opts.name, { text = opts.text, texthl = opts.name })
end

-- Standardize with Lazy and Mason
sign({ name = 'DiagnosticSignInfo', text = '●' })
sign({ name = 'DiagnosticSignHint', text = '●' })
sign({ name = 'DiagnosticSignWarn', text = '●' })
sign({ name = 'DiagnosticSignError', text = '●' })

-- Diagnostic options
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

