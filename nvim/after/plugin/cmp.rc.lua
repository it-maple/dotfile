-- Set up nvim-cmp.
local status_a, cmp = pcall(require, 'cmp')
local status_b, lspkind = pcall(require, 'lspkind')
local status_c, luasnip = pcall(require, 'luasnip')

if (not status_a or not status_b or not status_c) then
    return
end

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
                -- elseif has_words_before() then
                --     cmp.complete()
            else
                fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
            end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
            end
        end, { "i", "s" }),
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        -- ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
        })
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For luasnip users.
        { name = 'buffer' },
        { name = 'path' },
        { name = 'spell' },
    }),
    formatting = {
        format = lspkind.cmp_format({ writh_text = false, maxwidth = 50 })
    }
})
