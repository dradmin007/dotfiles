-------------------------------
--  "Zenburn" awesome theme  --
--    By Adrian C. (anrxc)   --
-------------------------------

local home_dir = "/home/stas"
local themes_path = home_dir .. "/.config/awesome/themes/"
--local themes_path = require("gears.filesystem").get_themes_dir()
local dpi = require("beautiful.xresources").apply_dpi

-- {{{ Main
local theme = {}
theme.wallpaper = home_dir .. "/wallpapper/1.jpg"
-- }}}

-- {{{ Styles
-- theme.font      = "UbuntuSansMono NF 9"
-- theme.font      = "IosevkaTerm Nerd Font Mono 10"


local hotkeys_font_type                     = "UbuntuSansMono NF"
local hotkeys_font_size                     = "11"
local theme_font_type                       = "IosevkaTerm Nerd Font Mono"
local theme_font_size                       = 10
theme.font                                  = theme_font_type .. " " .. theme_font_size
theme.hotkeys_font                          = hotkeys_font_type .. " " .. hotkeys_font_size
theme.hotkeys_description_font              = theme.font


-- {{{ Colors
theme.fg_normal  = "#ebdbb2"
theme.fg_focus                                  = "#FB4934"
theme.fg_urgent                                 = "#CC9393"
theme.bg_normal                                 = "#1d2021"
theme.bg_focus                                  = "#313131"
theme.bg_urgent                                 = theme.bg_normal
theme.bg_systray = theme.bg_normal
-- }}}


-- {{{ Borders
theme.border_width                              = dpi(1)
theme.border_normal                             = "#3F3F3F"
theme.border_focus                              = "#7F7F7F"
theme.border_marked                             = "#CC9393"
theme.tasklist_bg_focus                         = theme.bg_normal
theme.menu_height                               = dpi(15)
theme.menu_width                                = dpi(140)

theme.useless_gap   = dpi(0)
theme.border_width  = dpi(1)
-- theme.border_normal = "#3F3F3F"
-- theme.border_focus  = "#6F6F6F"
-- theme.border_marked = "#CC9393"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus                         = theme.bg_focus
theme.titlebar_bg_normal                        = theme.bg_normal
theme.titlebar_fg_focus                         = "#FABD2F" -- gruvbox yellow
--theme.titlebar_bg_focus  = "#3F3F3F"
--theme.titlebar_bg_normal = "#3F3F3F"
-- }}}
-- {{{ Tasks
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = true
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
--theme.taglist_bg_focus = "#CC9393"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#494B4F"
--theme.border_widget    = "#3F3F3F"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = "#CC9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
-- theme.menu_height = dpi(15)
-- theme.menu_width  = dpi(100)
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = themes_path .. "gruvbox/taglist/squarefz.png"
theme.taglist_squares_unsel = themes_path .. "gruvbox/taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon           = themes_path .. "gruvbox/awesome-icon.png"
theme.menu_submenu_icon      = themes_path .. "gruvbox/submenu.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = themes_path .. "gruvbox/layouts/tile.png"
theme.layout_tileleft   = themes_path .. "gruvbox/layouts/tileleft.png"
theme.layout_tilebottom = themes_path .. "gruvbox/layouts/tilebottom.png"
theme.layout_tiletop    = themes_path .. "gruvbox/layouts/tiletop.png"
theme.layout_fairv      = themes_path .. "gruvbox/layouts/fairv.png"
theme.layout_fairh      = themes_path .. "gruvbox/layouts/fairh.png"
theme.layout_spiral     = themes_path .. "gruvbox/layouts/spiral.png"
theme.layout_dwindle    = themes_path .. "gruvbox/layouts/dwindle.png"
theme.layout_max        = themes_path .. "gruvbox/layouts/max.png"
theme.layout_fullscreen = themes_path .. "gruvbox/layouts/fullscreen.png"
theme.layout_magnifier  = themes_path .. "gruvbox/layouts/magnifier.png"
theme.layout_floating   = themes_path .. "gruvbox/layouts/floating.png"
theme.layout_cornernw   = themes_path .. "gruvbox/layouts/cornernw.png"
theme.layout_cornerne   = themes_path .. "gruvbox/layouts/cornerne.png"
theme.layout_cornersw   = themes_path .. "gruvbox/layouts/cornersw.png"
theme.layout_cornerse   = themes_path .. "gruvbox/layouts/cornerse.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = themes_path .. "gruvbox/titlebar/close_focus.png"
theme.titlebar_close_button_normal = themes_path .. "gruvbox/titlebar/close_normal.png"

theme.titlebar_minimize_button_normal = themes_path .. "default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path .. "default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_focus_active  = themes_path .. "gruvbox/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = themes_path .. "gruvbox/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path .. "gruvbox/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = themes_path .. "gruvbox/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = themes_path .. "gruvbox/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = themes_path .. "gruvbox/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path .. "gruvbox/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = themes_path .. "gruvbox/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = themes_path .. "gruvbox/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = themes_path .. "gruvbox/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = themes_path .. "gruvbox/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = themes_path .. "gruvbox/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = themes_path .. "gruvbox/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = themes_path .. "gruvbox/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path .. "gruvbox/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = themes_path .. "gruvbox/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
