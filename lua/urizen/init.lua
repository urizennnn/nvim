require("urizen.remap")
print("hello Urizen")
require'lspconfig'.pyright.setup{}
require'lspconfig'.gopls.setup{}
require("mason").setup()
require("mason-lspconfig").setup()

require'cmp'.setup {
  sources = {
    { name = 'nvim_lsp' }
  }
}

require("urizen.set")
