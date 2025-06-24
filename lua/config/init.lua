require 'config.remap'
require 'config.lsp'

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.colorcolumn = { 80, 100 }

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftround = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = true
-- vi.opt.swapfile = false

vim.opt.hidden = true
vim.opt.autoread = true

vim.opt.scrolloff = 8
vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.showmatch = true
vim.opt.gdefault = false

vim.opt.termguicolors = true
vim.opt.signcolumn = 'yes'
vim.opt.isfname:append '@-@'
vim.opt.updatetime = 50

vim.opt.virtualedit:append 'block'

vim.opt.history = 1000

vim.cmd.colorscheme = 'sorbet'

vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })

vim.opt.guicursor =
  'n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175'

vim.api.nvim_create_user_command('TermHl', function()
  local b = vim.api.nvim_create_buf(false, true)
  local chan = vim.api.nvim_open_term(b, {})
  vim.api.nvim_chan_send(chan, table.concat(vim.api.nvim_buf_get_lines(0, 0, -1, false), '\n'))
  vim.api.nvim_win_set_buf(0, b)
end, { desc = 'Highlights ANSI termcodes in curbuf' })

vim.api.nvim_create_user_command('ToggleWrap', function()
  vim.opt.wrap = not vim.opt.wrap:get()
  vim.opt.linebreak = not vim.opt.linebreak:get()
end, { desc = 'Toggle text wrapping' })

if vim.g.neovide then
  local alpha = function()
    return string.format('%x', math.floor((255 * vim.g.transparency) or 0.8))
  end
  vim.o.guifont = 'CaskaydiaCove NF:h9'
  -- g:neovide_opacity should be 0 if you want to unify transparency of content and title bar.
  vim.g.neovide_opacity = 0.8
  vim.g.transparency = 0.8
  vim.g.neovide_background_color = '#0f1117' .. alpha()
  -- vim.g.neovide_cursor_vfx_mode = { 'wireframe', 'railgun' }
  -- vim.g.neovide_cursor_smooth_blink = true
  -- vim.g.neovide_cursor_vfx_opacity = 200.0
  -- vim.g.neovide_cursor_vfx_particle_lifetime = 0.5
  -- vim.g.neovide_cursor_vfx_particle_highlight_lifetime = 0.2
  -- vim.g.neovide_cursor_vfx_particle_density = 0.7
  -- vim.g.neovide_cursor_vfx_particle_speed = 10.0
  -- vim.g.neovide_cursor_vfx_particle_phase = 1.5
  -- vim.g.neovide_cursor_vfx_particle_curl = 1.0
end
