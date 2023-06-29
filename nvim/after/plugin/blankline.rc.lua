vim.opt.list = true

local status, blankline = pcall(require, "indent_blankline")

if (not status) then
    return
end

-- Apply plugin settings
blankline.setup({
    enabled = true,
    use_treesitter = true,
    char_highlight = 'LineNr',
    space_char_blankline = ' ',
    show_current_context = true,
    show_current_context_start = true,
    show_end_of_line = false,
    show_first_indent_level = true,
    show_trailing_blankline_indent = true,
    context_highlight_list = {
        'rainbowcol1',
        'rainbowcol2',
        'rainbowcol3',
        'rainbowcol4',
        'rainbowcol5',
        'rainbowcol6',
        'rainbowcol7',
    },
    buftype_exclude = {
        'quickfix',
        'help',
        'nofile',
        'prompt',
        'terminal',
    },
    filetype_exclude = {
        '',
        'NvimTree',
        'Trouble',
        'dashboard',
        'fugitive*',
        'git*',
        'help',
        'lspinfo',
        'mason',
        'packer',
    },
})
