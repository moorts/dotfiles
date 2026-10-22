return {
    "tjdevries/colorbuddy.nvim",
    dependencies = {
        "jesseleite/nvim-noirbuddy"
    },
    config = function ()
        vim.highlight.priorities.semantic_tokens = 95
        vim.cmd.colorscheme("moorts")
    end
}
--[[
return {
  'jesseleite/nvim-noirbuddy',
  dependencies = {
    { 'tjdevries/colorbuddy.nvim' }
  },
  lazy = false,
  priority = 1000,
  opts = {
    -- All of your `setup(opts)` will go here
  },
}
return {
    "Rigellute/shades-of-purple.vim",
    config = function ()
        vim.cmd("colorscheme shades_of_purple")
    end
}
]]
--[[
return {
    "agude/vim-eldar",
    config = function ()
        vim.cmd("colorscheme eldar")
    end
}
]]
--[[
return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function ()
        -- Default options:
        require("gruvbox").setup({
          terminal_colors = true, -- add neovim terminal colors
          undercurl = true,
          underline = true,
          bold = true,
          italic = {
            strings = true,
            emphasis = true,
            comments = true,
            operators = false,
            folds = true,
          },
          strikethrough = true,
          invert_selection = false,
          invert_signs = false,
          invert_tabline = false,
          invert_intend_guides = false,
          inverse = true, -- invert background for search, diffs, statuslines and errors
          contrast = "", -- can be "hard", "soft" or empty string
          palette_overrides = {},
          overrides = {},
          dim_inactive = false,
          transparent_mode = false,
        })
        vim.cmd("colorscheme gruvbox")
    end
}
]]
