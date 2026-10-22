return {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    config = function ()
        local custom_theme = require('lualine.themes.papercolor_light')

        custom_theme.normal.a.bg = '#b7b7f7'
        custom_theme.normal.b.bg = '#8b8bcd'
        custom_theme.normal.c.bg = '#3e3e75'

        custom_theme.visual.a.bg = '#ff8bff'

        require('lualine').setup {
            options = {
                theme = custom_theme,
                icons_enabled = true,
                component_separators = { left = '', right = ''},
                section_separators = { left = '', right = ''},
            },
        }
    end
}
