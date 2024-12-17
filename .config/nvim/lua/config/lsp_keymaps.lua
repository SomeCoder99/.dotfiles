return {
  n = {
    ["K"] = { vim.lsp.buf.hover, "LSP hover" },
    ["<leader>ca"] = { vim.lsp.buf.code_action, "LSP code action" },
    ["<leader>f="] = { vim.lsp.buf.format, "LSP format" },
    ["gd"] = { vim.lsp.buf.definition, "LSP go to definition" },
    ["gD"] = { vim.lsp.buf.declaration, "LSP go to definition" },
    ["gi"] = { vim.lsp.buf.implementation, "LSP go to implementation" },
    ["]d"] = { vim.diagnostic.goto_next, "Diagnostic next" },
    ["[d"] = { vim.diagnostic.goto_prev, "Diagnostic previous" },
  },

  [{ "n", "i", "s" }] = {
    ["<c-k>"] = { vim.lsp.buf.signature_help, "LSP signature" },
  },
}
