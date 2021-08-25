--require("lsp").setup "json"

require"lspconfig".jsonls.setup {
  cmd = {}
}

lvim.lang.json.formatters = {
  {
    exe = "prettier",
    -- args = {},
  }
}
