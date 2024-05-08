require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {"lua_ls"}
})

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
capabilities = capabilities,
}
require("lspconfig").rust_analyzer.setup {
capabilities = capabilities,
}
require("lspconfig").clangd.setup {
capabilities = capabilities,
}
