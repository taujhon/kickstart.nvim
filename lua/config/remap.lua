vim.g.mapleader = ' '

-- vimrc quick reload
vim.keymap.set('n', '<Leader>R', ':so $XDG_CONFIG_HOME/nvim/init.lua<CR>')
vim.keymap.set('n', '<Leader>r', ':so<CR>')

-- wrapping
vim.keymap.set('n', '<Leader>w', ':ToggleWrap<CR>', { desc = 'Toggle text wrapping' })

-- check mappings
vim.keymap.set('n', '?', ':map<CR>')
vim.keymap.set('n', '<Leader>?', ':verb map<CR>')

-- tag navigation
vim.keymap.set('n', '<Leader>p', '<C-o>')
vim.keymap.set('n', '<Leader>n', '<C-]>')

-- pane split
vim.keymap.set('n', '<Leader>v', '<C-w>v')
vim.keymap.set('n', '<Leader>s', '<C-w>s')

-- pane navigation
vim.keymap.set('n', '<Leader>h', '<C-w>h')
vim.keymap.set('n', '<Leader>j', '<C-w>j')
vim.keymap.set('n', '<Leader>k', '<C-w>k')
vim.keymap.set('n', '<Leader>l', '<C-w>l')
vim.keymap.set('n', '<Leader>H', '<C-w>H')
vim.keymap.set('n', '<Leader>J', '<C-w>J')
vim.keymap.set('n', '<Leader>K', '<C-w>K')
vim.keymap.set('n', '<Leader>L', '<C-w>L')

-- sane find/replace default
vim.keymap.set('n', '/', '/\\v')
vim.keymap.set('v', '/', '/\\v')
vim.keymap.set('n', '<Leader>/', ':%s/\\v')
vim.keymap.set('v', '<Leader>/', ':%s/\\v')
vim.keymap.set('n', '<Leader>s', ':%s/\\v<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>')

-- cycle through buffers
vim.keymap.set('n', '<Leader><Tab>', '<C-^>')

-- explorer
vim.keymap.set('n', '<Leader>pv', vim.cmd.Ex)

-- move selected
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- keep cursor in place
vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- keep yank
vim.keymap.set('x', '<Leader>p', '"_dP')

-- yank to clipboard (plus paragraph)
vim.keymap.set('n', '<Leader>y', '"+y')
vim.keymap.set('v', '<Leader>y', '"+y')
vim.keymap.set('n', '<Leader>Y', '"+Y')

-- delete to void reg
vim.keymap.set('n', '<Leader>d', '"_d')
vim.keymap.set('v', '<Leader>d', '"_d')

-- unset Q
vim.keymap.set('n', 'Q', '<Nop>')

-- set file to executable
vim.keymap.set('n', '<Leader>x', ':!chmod +x %<CR>')
