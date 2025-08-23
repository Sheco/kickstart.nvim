return {
  'folke/persistence.nvim',
  --  event = 'BufReadPre', -- this will only start session saving when an actual file was opened
  opts = {
    -- add any custom options here
  },
  keys = {
    {
      '<leader>l',
      function()
        require('persistence').start()
        require('persistence').load()
      end,
      desc = 'Load session',
    },
  },
}
