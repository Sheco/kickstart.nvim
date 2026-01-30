vim.o.tabstop = 2 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 2 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 2 -- Number of spaces inserted when indenting
-- set this on nvim 0.11
vim.o.completeopt = 'menuone,noselect,popup,fuzzy'

-- add borders to certain popups
vim.o.winborder = 'rounded'

vim.g.autoformat = false

vim.g.spellfile_URL = 'https://ftp.nluug.nl/vim/runtime/spell/'
vim.opt.spelllang = 'en_us'

vim.keymap.set(
  'n',
  '<leader><leader>',
  function() require('telescope.builtin').buffers { sort_mru = true, ignore_current_buffer = false } end,
  { desc = 'Show buffers' }
)
return {}
