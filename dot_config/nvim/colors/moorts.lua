local noirbuddy = require("noirbuddy.colors").all()

local colorbuddy = require("colorbuddy")
colorbuddy.colorscheme("moorts")

-- And then modify as you like
local Color = colorbuddy.Color
local colors = colorbuddy.colors
local Group = colorbuddy.Group
local groups = colorbuddy.groups
local styles = colorbuddy.styles

-- Use Color.new(<name>, <#rrggbb>) to create new colors
-- They can be accessed through colors.<name>
-- Color.new('background',  '#1b1b33')
Color.new('background',  '#1b1b33')
-- Color.new('foreground',  '#d5d5d5')
Color.new('foreground',  '#5ed378')
Color.new('red',         '#cc6666')
Color.new('green',       '#99cc99')
Color.new('bold_red',    '#ff0000')
Color.new('line_nr',     '#eeeeee')

Color.new('pink',        '#ff8bff')

Color.new('literals',    '#f0ad6d')
Color.new('comments',    '#00ff00') 
Color.new('idents',      '#ff8bff')
Color.new('constants',   '#ffcd8b')
Color.new('special',     '#c080d0')
Color.new('special_bg',  '#404040')
Color.new('statements',  '#b7b7f7')
Color.new('special_key', '#3b205d')
Color.new('title',       '#af4f4b')
Color.new('non_text',    '#8b8bcd')
Color.new('bars',        '#3e3e75')

Color.new('noir_0',      '#ffffff')
Color.new('noir_1',      '#f5f5f5')
Color.new('noir_2',      '#d5d5d5')
Color.new('noir_3',      '#b4b4b4')
Color.new('noir_4',      '#a7a7a7')
Color.new('noir_5',      '#949494')
Color.new('noir_6',      '#737373')
Color.new('noir_7',      '#535353')
Color.new('noir_8',      '#323232')
Color.new('noir_9',      '#212121')

-- Group.new("Background", colors.background)
Group.new("Foreground", colors.foreground)

-- Doc Comments should be bright red!
Group.new("@comment.documentation", colors.comments)
Group.new("SpecialComment", colors.comments)
Group.new("Comment", colors.comments)

-- Group.new("Keyword", colors.pink, colors.background, styles.bold)
Group.new("Identifier", colors.idents)
Group.new("Constant", colors.constants)
Group.new("Special", colors.special)
Group.new("SpecialChar", colors.special, colors.special_bg)
Group.new("Statement", colors.statements)
Group.new("SpecialKey", colors.special_key, colors.background, styles.bold)
Group.new("Title", colors.title, colors.background, styles.bold)

Group.new("Function", colors.pink, colors.background, styles.bold)
Group.new("Macro", colors.pink, colors.background, styles.bold)

Group.new("String", colors.literals)
Group.new("@number", colors.literals)
Group.new("Number", colors.literals)
Group.new("Float", colors.literals)
Group.new("@character", colors.literals)
Group.new("Character", colors.literals)

Group.new("Normal", colors.foreground, nil)
Group.new("NonText", colors.non_text, colors.background, styles.bold)
Group.new("SignColumn", colors.noir_5, colors.background)
Group.new("LineNr", colors.line_nr, colors.bars)
Group.new("LineNrAbove", colors.non_text, colors.bars)
Group.new("LineNrBelow", colors.non_text, colors.bars)

Group.new("Include", colors.foreground)

Group.new("DiagnosticInfo", colors.noir_5)
Group.new("DiagnosticHint", colors.noir_5)
