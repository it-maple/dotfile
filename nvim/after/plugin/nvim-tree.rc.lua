-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

local status, tree = pcall(require, 'nvim-tree')

if (not status) then
    return
end

tree.setup({
    disable_netrw       = true,
    hijack_netrw        = true,
    open_on_setup       = false,
    ignore_ft_on_setup  = {
        "startify",
        "dashboard",
        "alpha",
    },
    open_on_tab         = true,
    hijack_cursor       = false,
    update_cwd          = true,
    diagnostics         = {
        enable = true,
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        }
    },
    update_focused_file = {
        enable      = true,
        update_cwd  = true,
        ignore_list = {}
    },
    system_open         = {
        cmd  = nil,
        args = {}
    },
    git                 = {
        enable = true,
        ignore = true,
        timeout = 500,
    },
    view                = {
        adaptive_size = true,
        width = 30,
        hide_root_folder = false,
        side = 'left',
        mappings = {
            custom_only = false,
            list = {
                { key = "u", action = "dir_up" },
            },
        }
    },
    sort_by             = "case_sensitive",
    renderer            = {
        group_empty = true,
    },
    filters             = {
        dotfiles = true,
    },
})

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', '<A-t>', ':NvimTreeToggle<CR>', opts)
