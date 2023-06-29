local status, lspconfig = pcall(require, 'lspconfig')

if (not status) then
    return
end

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- formatting
    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_command [[augroup Format]]
        vim.api.nvim_command [[autocmd! * <buffer>]]
        vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
        vim.api.nvim_command [[augroup END]]
    end
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
end

lspconfig['pyright'].setup {
    on_attach = on_attach,
}
lspconfig['clangd'].setup {
    on_attach = on_attach,
}
lspconfig.lua_ls.setup {
    on_attach = on_attach
}
