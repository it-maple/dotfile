vim.opt.termguicolors = true

local status, line = pcall(require, 'bufferline')

if (not status) then
    return
end

line.setup {
    options = {
        -- numbers = "ordinal",
        numbers = "buffer_id",
        -- numbers = function(opts)
        --     return string.format('%s·%s', opts.raise(opts.id), opts.lower(opts.ordinal))
        -- end,
        -- mode = 'tabs',
        separator_style = 'slant',
        always_show_buffline = true,
        show_buffer_icons = true,
        color_icons = true,
        buffer_close_icon = "",
        close_icon = "",
        show_buffer_close_icon = false,
        show_close_icon = false,
        persist_buffer_sort = true,
        enforce_regular_tabs = true,

        diagnostics = "nvim_lsp",
        --- count is an integer representing total count of errors
        --- level is a string "error" | "warning"
        --- this should return a string
        --- Don't get too fancy as this function will be executed a lot
        diagnostics_indicator = function(count, level)
            local icon = level:match("error") and " " or ""
            return " " .. icon .. count
        end,

        groups = {
            options = {
                toggle_hidden_on_enter = true -- when you re-enter a hidden group this options re-opens that group so the buffer is visible
            },
            items = {
                {
                    name = "Tests", -- Mandatory
                    highlight = { underline = false, sp = "blue" }, -- Optional
                    priority = 2, -- determines where it will appear relative to other groups (Optional)
                    icon = "", -- Optional
                    matcher = function(buf) -- Mandatory
                        return buf.filename:match('%_test') or buf.filename:match('%_spec')
                    end,
                },
                {
                    name = "Docs",
                    highlight = { undercurl = false, sp = "green" },
                    auto_close = false, -- whether or not close this group if it doesn't contain the current buffer
                    matcher = function(buf)
                        return buf.filename:match('%.md') or buf.filename:match('%.txt')
                    end,
                    separator = { -- Optional
                        style = require('bufferline.groups').separator.tab
                    },
                },
                {
                    name = "Sources",
                    matcher = function(buf)
                        return buf.filename:match('%.cpp') or buf.filename:match('%.lua')
                    end
                }
            }
        }

    }
}
