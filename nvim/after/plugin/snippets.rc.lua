require("luasnip.loaders.from_vscode").lazy_load()

local status, luasnip = pcall(require, 'luasnip')

if (not status) then
    return
end

luasnip.config.set_config = {
    history = true,
    updateevents = 'TextChanged, TextChangedI',
    enable_autosnippets = true
}

local s = luasnip.snippet
local t = luasnip.text_node
local i = luasnip.insert_node
