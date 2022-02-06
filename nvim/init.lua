require'autocmd'
require'settings'
require'packer-setup'
require'plugins'
require'keybindings'
require'colorscheme'
require'plugins.nvimtree'
require'lsp'
require'sumneko'
require'plugins.treesitter'
require'plugins.telescope'
require'plugins.cmp'
require'plugins.refactoring'
require'plugins.dap'
require'dapui'.setup()
-- require'navigator'.setup()
-- require'plugins.lspsaga'
require'hop'.setup { keys = 'etovxqpdygfblzhckisuran', term_seq_bias = 0.5 }
-- require'plugins.catpuccino'
