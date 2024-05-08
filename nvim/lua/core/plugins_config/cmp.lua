local cmp = require("cmp")
require("luasnip.loaders.from_vscode").lazy_load()
cmp.setup({
    sources = {
        { name = "luasnip" },
				{ name = "nvim_lsp"},
    },
    mapping = cmp.mapping.preset.insert({
			['<Alt_L-j>'] = cmp.mapping.scroll_docs(-4),
			['<Alt_L-k>'] = cmp.mapping.scroll_docs(4),
			['<C-e>'] = cmp.mapping.complete(),
			['<CR>'] = cmp.mapping.confirm({select = true}),
        }),
    snippet = {
			expand = function(args)
				require('luasnip').lsp_expand(args.body)
				end,
    },
})

