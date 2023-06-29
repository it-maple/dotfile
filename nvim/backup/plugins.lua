vim.cmd [[ packadd packer.nvim ]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

     use 'sainnhe/everforest'

     use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

     use 'hrsh7th/cmp-nvim-lsp'
     use 'hrsh7th/cmp-buffer'
     use 'hrsh7th/cmp-path'
     use 'hrsh7th/cmp-cmdline'
     use 'hrsh7th/nvim-cmp'
     use 'onsails/lspkind-nvim'

     -- For luasnip users.
     use 'L3MON4D3/LuaSnip'
     use 'saadparwaiz1/cmp_luasnip'

     use {
         'nvim-treesitter/nvim-treesitter',
         run = ':TsUpdate'
     }

     use 'kyazdani42/nvim-web-devicons'
     use 'nvim-telescope/telescope-file-browser.nvim'
     use {
         'nvim-telescope/telescope.nvim', tag = '0.1.0',
         requires = { { 'nvim-lua/plenary.nvim' } }
     }

     use 'rmagatti/alternate-toggler'
     use 'windwp/nvim-autopairs'
     use 'numToStr/Comment.nvim'
     use 'wellle/targets.vim'
     use 'mg979/vim-visual-multi'

     use {
         'nvim-lualine/lualine.nvim',
         requires = { 'kyazdani42/nvim-web-devicons', opt = true }
     }

     use "nullishamy/autosave.nvim"

     use 'norcalli/nvim-colorizer.lua'

     use 'folke/tokyonight.nvim'

     use {
         'akinsho/bufferline.nvim',
         tag = "v2.*",
         requires = 'kyazdani42/nvim-web-devicons'
     }

     use {
         'nvim-tree/nvim-tree.lua',
         requires = {
             'nvim-tree/nvim-web-devicons', -- optional, for file icons
         },
         tag = 'nightly' -- optional, updated every week. (see issue #1193)
     }

     use({
         "glepnir/lspsaga.nvim",
         branch = "main",
         config = function()
             local saga = require("lspsaga")

             saga.init_lsp_saga({
                 -- your configuration
             })
         end,
     })

     use 'lewis6991/gitsigns.nvim'

     use { 'fgheng/winbar.nvim' }

     -- Lua
     use {
         "SmiteshP/nvim-gps",
         requires = "nvim-treesitter/nvim-treesitter"
     }
end)
