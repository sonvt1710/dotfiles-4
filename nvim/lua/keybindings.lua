local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    { noremap = true, silent = true}
  )
end

-- Buffers
key_mapper('', '<leader>p', ':bprev<CR>')
key_mapper('', '<leader>n', ':bnext<CR>')
key_mapper('', '<leader>bd', ':bd<CR>')
key_mapper('', '<leader>q', ':wq<CR>')
key_mapper('', '<leader>w', ':w<CR>')

-- Arrowkeys
key_mapper('', '<up>', '<nop>')
key_mapper('', '<down>', '<nop>')
key_mapper('', '<left>', '<nop>')
key_mapper('', '<right>', '<nop>')

-- Escape
key_mapper('i', 'jk', '<ESC>')
key_mapper('i', 'JK', '<ESC>')
key_mapper('i', 'jK', '<ESC>')

-- Windows
key_mapper('n', '<leader>sv', ':vsplit<CR>')
key_mapper('n', '<leader>sh', ':split<CR>')
key_mapper('n', '<leader>sr', '<C-w>r')
key_mapper('n', '<leader>s+', ':vertical resize +5<CR>')
key_mapper('n', '<leader>s-', ':vertical resize -5<CR>')
key_mapper('n', '<leader>s=', '<C-w>=')
key_mapper('n', '<leader>l', ':wincmd l<CR>')
key_mapper('n', '<leader>k', ':wincmd k<CR>')
key_mapper('n', '<leader>j', ':wincmd j<CR>')
key_mapper('n', '<leader>h', ':wincmd h<CR>')

-- LSP
key_mapper('n', '<leader>dn', ':lua vim.lsp.diagnostic.goto_next()<CR>')
key_mapper('n', '<leader>dp', ':lua vim.lsp.diagnostic.goto_prev()<CR>')
key_mapper('n', '<leader>ds', ':lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
key_mapper('n', 'gd', ':lua vim.lsp.buf.definition()<CR>')
key_mapper('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>')
key_mapper('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>')
key_mapper('n', 'gw', ':lua vim.lsp.buf.document_symbol()<CR>')
key_mapper('n', 'gW', ':lua vim.lsp.buf.workspace_symbol()<CR>')
key_mapper('n', 'gr', ':lua vim.lsp.buf.references()<CR>')
key_mapper('n', 'gt', ':lua vim.lsp.buf.type_definition()<CR>')
key_mapper('n', 'K', ':lua vim.lsp.buf.hover()<CR>')
key_mapper('n', '<c-k>', ':lua vim.lsp.buf.signature_help()<CR>')
key_mapper('n', '<leader>ca', ':lua vim.lsp.buf.code_action()<CR>')
key_mapper('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>')

-- Telescope
key_mapper('n', '<C-p>', ':lua require"telescope.builtin".find_files()<CR>')
key_mapper('n', '<leader>fs', ':lua require"telescope.builtin".live_grep()<CR>')
key_mapper('n', '<leader>fh', ':lua require"telescope.builtin".help_tags()<CR>')
key_mapper('n', '<leader>fb', ':lua require"telescope.builtin".buffers()<CR>')
key_mapper('n', '<leader>gf', ':lua require"telescope.builtin".git_files()<CR>')
key_mapper('n', '<leader>gs', ':lua require"telescope.builtin".git_status()<CR>')

-- Plugins
key_mapper('n', '<leader>tt', ':NvimTreeToggle<CR>')
key_mapper('n', '<leader>ff', ':NvimTreeFindFile<CR>')
key_mapper('', '<leader><leader>', ':HopWord<CR>')

-- Helpers
key_mapper('', "''", '<ESC>I"<ESC>A"<ESC>')
key_mapper('', ';;', '<ESC>A;<ESC>')
key_mapper('', ',,', '<ESC>A,<ESC>')
key_mapper('', '<ESC>', ':noh<CR>')
key_mapper('','Y','y$')