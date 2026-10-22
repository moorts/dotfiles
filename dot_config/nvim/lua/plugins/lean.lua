return {
  'Julian/lean.nvim',
  event = { 'BufReadPre *.lean', 'BufNewFile *.lean' },

  dependencies = {
    'neovim/nvim-lspconfig',
    'nvim-lua/plenary.nvim',

    -- optional dependencies:

    -- 'andymass/vim-matchup',          -- for enhanced % motion behavior
    -- 'andrewradev/switch.vim',        -- for switch support
    -- 'tomtom/tcomment_vim',           -- for commenting
    'nvim-telescope/telescope.nvim', -- for 2 Lean-specific pickers

    -- a completion engine
    --    hrsh7th/nvim-cmp or Saghen/blink.cmp are popular choices
  },

  ---@type lean.Config
  opts = { -- see below for full configuration options
    abbreviations = { builtin = true },
    mappings = true,
  }
}
