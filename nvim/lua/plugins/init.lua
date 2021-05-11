local packer = require'packer'

local util = require'packer.util'

packer.init({
    package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
  })

packer.startup(function()
  local use = use

  -- GENERAL
  use 'nvim-treesitter/nvim-treesitter'
  use 'sheerun/vim-polyglot'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/telescope.nvim'
  use 'jremmen/vim-ripgrep'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion-nvim'
  use 'anott03/nvim-lspinstall'
  use 'glepnir/lspsaga.nvim'
  use {
    'creativenull/diagnosticls-nvim',
    requires = { 'neovim/nvim-lspconfig' }
  }

  -- THEMES
  use 'sainnhe/edge'

  -- GIT
  use 'tpope/vim-fugitive'
  use 'itchyny/vim-gitbranch'
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }

  -- EDITING
  use 'jiangmiao/auto-pairs'
  use { 'prettier/vim-prettier', run = 'yarn install' }
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'unblevable/quick-scope'
  use 'sirver/UltiSnips'
  use 'phaazon/hop.nvim'

  -- EDITOR
  -- use 'itchyny/lightline.vim'
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use {
    'glepnir/galaxyline.nvim',
    branch = 'main',
    config = function() require'plugins.galaxyline' end,
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'akinsho/nvim-bufferline.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = require'plugins.bufferline',
  }

end
)

