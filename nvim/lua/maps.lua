vim.g.mapleader = " "

local keymap = vim.keymap

-- 复制当前行文本
keymap.set('n', 'Y', 'y$')

-- 向上或向下跳转到搜索文本处，并将其置于屏幕中心
keymap.set('n', 'n', 'nzz')
keymap.set('n', 'N', 'Nzz')

-- 映射保存或退出neovim操作
keymap.set('n', '<A-s>', '<cmd>w<cr>')
keymap.set('n', '<A-q>', '<cmd>q<cr>')
keymap.set('n', '<A-Q>', '<cmd>q!<cr>')

-- 取消高亮
keymap.set('n', '<ESC><ESC>', '<cmd>nohlsearch<cr>')

-- 光标窗口间移动
keymap.set('n', '<A-j>', '<C-w>j')
keymap.set('n', '<A-k>', '<C-w>k')
keymap.set('n', '<A-h>', '<C-w>h')
keymap.set('n', '<A-l>', '<C-w>l')

--  文本多行或多字符间跳转
keymap.set('n', 'J', '7j')
keymap.set('n', 'K', '7k')
keymap.set('n', 'H', '7h')
keymap.set('n', 'L', '7l')
keymap.set('v', 'J', '7j')
keymap.set('v', 'K', '7k')
keymap.set('v', 'H', '7h')
keymap.set('v', 'L', '7l')

-- 切换标签页
keymap.set('n', '<leader>tp', '<cmd>tabp<cr>')
keymap.set('n', '<leader>tn', '<cmd>tabn<cr>')
keymap.set('n', '<leader>tp', '<cmd>tabc<cr>')
keymap.set('n', '<leader>to', '<cmd>tabo<cr>')

-- buffer间跳转
keymap.set('n', '<A-,>', '<cmd>bp<cr>')
keymap.set('n', '<A-.>', '<cmd>bn<cr>')
keymap.set('n', '<A-Tab>', '<cmd>b#<cr>')
keymap.set('n', '<A-d>', '<cmd>bdelete<cr>')

-- 映射方向键
keymap.set('i', '<C-j>', '<Down>')
keymap.set('i', '<C-k>', '<Up>')
keymap.set('i', '<C-p>', '<Left>')
keymap.set('i', '<C-l>', '<Right>')

-- 缩进或后退一个tab键长度
keymap.set('v', '<', '<gv')
keymap.set('v', '>', '>gv')
