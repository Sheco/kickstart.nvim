vim.lsp.config['zeek'] = {
  cmd = { 'zeek-language-server' },
  filetypes = { 'zeek' },
  root_markers = { '.git' },
  settings = {},
}
vim.lsp.enable 'zeek'

return {
  { 'zeek/vim-zeek', enabled = true },
}
