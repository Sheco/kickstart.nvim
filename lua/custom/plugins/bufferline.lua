return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  lazy = false,
  opts = {
    options = {
      always_show_bufferline = true,
      sort_by = function(buffer_a, buffer_b)
        local info_a = vim.fn.getbufinfo(buffer_a.id)[1]
        local info_b = vim.fn.getbufinfo(buffer_b.id)[1]
        return info_a.lastused > info_b.lastused
        -- local stat_a = vim.loop.fs_stat(buffer_a.path)
        -- local stat_b = vim.loop.fs_stat(buffer_b.path)
        -- if not stat_a or not stat_b then
        --   return (stat_a and true) or false
        -- end
        -- return stat_a.mtime.sec > stat_b.mtime.sec
      end,
    },
  },
  keys = {
    { '<leader>bp', '<Cmd>BufferLineTogglePin<CR>', desc = 'Toggle Pin' },
    { '<leader>bP', '<Cmd>BufferLineGroupClose ungrouped<CR>', desc = 'Delete Non-Pinned Buffers' },
    { '[b', '<cmd>BufferLineCyclePrev<cr>', desc = 'Prev Buffer' },
    { ']b', '<cmd>BufferLineCycleNext<cr>', desc = 'Next Buffer' },
    { '<leader>br', '<Cmd>BufferLineCloseRight<CR>', desc = 'Delete Buffers to the Right' },
    { '<leader>bl', '<Cmd>BufferLineCloseLeft<CR>', desc = 'Delete Buffers to the Left' },
    { '<C-h>', '<cmd>BufferLineCyclePrev<cr>', desc = 'Prev Buffer' },
    { '<C-l>', '<cmd>BufferLineCycleNext<cr>', desc = 'Next Buffer' },
  },
}
