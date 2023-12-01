local icons = require("nvim-nonicons")
local nonicons_extention = require("nvim-nonicons.extentions.nvim-tree")
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  
  use 'wbthomason/packer.nvim'
  
  
  
  
  use "kyazdani42/nvim-web-devicons"
  use { 'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true},
      config = function()
      require('lualine').setup()
  end, }
  
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })
  
  
  
  
  use {'akinso/bufferline.nvim',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function()
      require("bufferline").setup{}
  end, }
  use 'majutsushi/tagbar'
  
  use { 'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function() 
      require("nvim-tree").setup({
        renderer = {
        icons = {
        glyphs = nonicons_extention.glyphs,
        },
  },
})
  end, }
  
  use 'nvim-lua/popup.nvim'
  
  use 'yamatsum/nvim-nonicons'

  
  use {'yamatsum/nvim-nonicons',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function() 
      require('nvim-nonicons').setup {}
      end,} 
  
  use { 'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} },
      config = function() 
      require("telescope").setup({
        defaults = {
        prompt_prefix = "  " .. icons.get("telescope") .. "  ",
        selection_caret = " ❯ ",
        entry_prefix = "   ",},
        })
  end, }
  
  
  
  
  use { 'windwp/nvim-autopairs',
      config = function()
      require("nvim-autopairs").setup()
  end}
  
  use { 'numToStr/Comment.nvim',
      config = function() 
      require('Comment').setup() 
  end }
  use("williamboman/mason.nvim") 
  use("williamboman/mason-lspconfig.nvim") 

  
  use("neovim/nvim-lspconfig") 
  use("hrsh7th/cmp-nvim-lsp") 
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    requires = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  }) 
  use("jose-elias-alvarez/typescript.nvim") 
  use("onsails/lspkind.nvim") 
  
  use("hrsh7th/nvim-cmp") 
  use("hrsh7th/cmp-buffer") 
  use("hrsh7th/cmp-path") 

  
  use("L3MON4D3/LuaSnip") 
  use("saadparwaiz1/cmp_luasnip") 
  use("rafamadriz/friendly-snippets")
  end)
