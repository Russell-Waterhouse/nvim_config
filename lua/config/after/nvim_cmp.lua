local cmp = require('cmp')
local luasnip = require('luasnip')

-- loads vscode-style snippets from places like friendly-snippets
require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
    completions = {
        completeopt = "menu,menuone,preview,noselect",
    },
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' }, -- lsp completions
        { name = 'luasnip' }, -- snippets
        { name = 'buffer' }, -- file system buffer
        { name = 'path' }, -- file system path
    }),
})

