vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  ---------------------------------------------------------
  -- ПЛАГИНЫ ВНЕШНЕГО ВИДА
  ---------------------------------------------------------
  -- Информационная строка внизу
  use "kyazdani42/nvim-web-devicons"
  use { 'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true},
      config = function()
      require('lualine').setup()
  end, }
  -- Тема в стиле Rose Pine
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })
  ---------------------------------------------------------
  -- МОДУЛИ РЕДАКТОРА
  ---------------------------------------------------------
  -- Табы с вкладками сверху
  use {'akinsho/bufferline.nvim',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function()
      require("bufferline").setup{}
  end, }
  -- Структура классов и функций в файле
  use 'majutsushi/tagbar'
  -- Файловый менеджер
  use { 'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function() 
      require'nvim-tree'.setup {}
  end, }
  --- popup окошки
  use 'nvim-lua/popup.nvim'
  ---Шрифт
  use 'yamatsum/nvim-nonicons'

  --- if use nvim-web-devicons
  use {'yamatsum/nvim-nonicons',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function() 
      require('nvim-nonicons').setup {}
      end,} 
  ---------------------------------------------------------
  -- ПОИСК
  ---------------------------------------------------------
  -- Наш FuzzySearch
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
  ---------------------------------------------------------
  -- КОД
  ---------------------------------------------------------
  -- автоматические закрывающиеся скобки
  use { 'windwp/nvim-autopairs',
      config = function()
      require("nvim-autopairs").setup()
  end}
  -- Комментирует по <gc> все, вне зависимости от языка программирования
  use { 'numToStr/Comment.nvim',
      config = function() 
      require('Comment').setup() 
  end }

  ---------------------------------------------------------
  use("williamboman/mason.nvim") -- In charge of managing LSP servers, linters & formatters
  use("williamboman/mason-lspconfig.nvim") -- Bridges the gap between mason & lspconfig

  -- Configuring LSP servers
  use("neovim/nvim-lspconfig") -- Easily configure language servers
  use("hrsh7th/cmp-nvim-lsp") -- For autocompletion
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    requires = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  }) -- Enhanced LSP UIs
  use("jose-elias-alvarez/typescript.nvim") -- Additional functionality for TypeScr ipt server (e.g., rename file & update imports)
  use("onsails/lspkind.nvim") -- VSCode-like icons for autocompletion
  ---------------------------------------------------------
  use("hrsh7th/nvim-cmp") -- completion plugin
  use("hrsh7th/cmp-buffer") -- source for text in buffer
  use("hrsh7th/cmp-path") -- source for file system paths

  -- snippets
  use("L3MON4D3/LuaSnip") -- snippet engine
  use("saadparwaiz1/cmp_luasnip") -- for autocompletion
  use("rafamadriz/friendly-snippets") -- useful snippets
  -- РАЗНОЕ
  ---------------------------------------------------------
  -- Даже если включена русская раскладка, то nvim-команды будут работать
  use 'powerman/vim-plugin-ruscmd'
end)
