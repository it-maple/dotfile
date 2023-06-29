require('nvim-treesitter.configs').setup{
    highlight = {
        enable = true,
        disable = {},
    },
    indent = {
        enable = true,
        disable = {},
    },
    ensure_installed = {
        'c',
        'python',
        'json'
    },
    autotag = {
        enable = true
    }
}
