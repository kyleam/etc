-------------------------------
-- modified from zenburn theme
-- 2012.05.06
-------------------------------

-- Alternative icon sets and widget icons:
--  * http://awesome.naquadah.org/wiki/Nice_Icons

-- {{{ Main
theme = {}
home = os.getenv("HOME")
themedir = home .. "/.config/awesome/themes/plaingray/"

-- set wallpaper
--wallpaper = themedir .. "wallpaper/some.jpg"
--theme.wallpaper_cmd = { "awsetbg " .. wallpaper}
-- }}}

-- {{{ Styles
theme.font          = "Droid Sans Mono 8"

-- {{{ Colors
theme.bg_focus     = "#dddddd"
theme.bg_normal      = "#dddddd"
theme.bg_urgent     = "#ffdd00"

theme.fg_normal = "#666666"
theme.fg_focus = "#0000CD"
theme.fg_urgent     = "#111111"
-- }}}

-- {{{ Borders
theme.border_width  = "3"
theme.border_normal = "#DCDCDC"
theme.border_focus  = "#000000"
theme.border_marked = "#CC9393"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = "#3F3F3F"
theme.titlebar_bg_normal = "#3F3F3F"
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
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
theme.menu_height = "15"
theme.menu_width  = "100"
-- }}}

-------------------------------------
default_theme_dir   = "/usr/share/awesome/themes/default/"
zenburn_theme_dir   = "/usr/share/awesome/themes/zenburn/"
sky_theme_dir   = "/usr/share/awesome/themes/sky/"

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = themedir .. "taglist/squarefw.png"
-- theme.taglist_squares_sel   = default_theme_dir .. "taglist/squarefw.png"
theme.taglist_squares_unsel = themedir .. "taglist/squarew.png"
-- theme.taglist_squares_unsel = default_theme_dir .. "taglist/squarew.png"
-- theme.taglist_squares_sel   = "/usr/share/awesome/themes/zenburn/taglist/squarefz.png"
-- theme.taglist_squares_unsel = "/usr/share/awesome/themes/zenburn/taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon           = zenburn_theme_dir .. "awesome-icon.png"
theme.menu_submenu_icon      =  default_theme_dir .. "submenu.png"
theme.tasklist_floating_icon =  default_theme_dir .. "tasklist/floatingw.png"
-- }}}

-- {{{ Layout
theme.layout_tile       =  default_theme_dir .. "layouts/tile.png"
theme.layout_tileleft   =  default_theme_dir .. "layouts/tileleft.png"
theme.layout_tilebottom =  default_theme_dir .. "layouts/tilebottom.png"
theme.layout_tiletop    =  default_theme_dir .. "layouts/tiletop.png"
theme.layout_fairv      =  default_theme_dir .. "layouts/fairv.png"
theme.layout_fairh      =  default_theme_dir .. "layouts/fairh.png"
theme.layout_spiral     =  default_theme_dir .. "layouts/spiral.png"
theme.layout_dwindle    =  default_theme_dir .. "layouts/dwindle.png"
theme.layout_max        =  default_theme_dir .. "layouts/max.png"
theme.layout_fullscreen =  default_theme_dir .. "layouts/fullscreen.png"
theme.layout_magnifier  =  default_theme_dir .. "layouts/magnifier.png"
theme.layout_floating   =  default_theme_dir .. "layouts/floating.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = zenburn_theme_dir .. "titlebar/close_focus.png"
theme.titlebar_close_button_normal = zenburn_theme_dir .. "titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active  = zenburn_theme_dir .. "titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = zenburn_theme_dir .. "titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = zenburn_theme_dir .. "titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = zenburn_theme_dir .. "titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = zenburn_theme_dir .. "titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = zenburn_theme_dir .. "titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = zenburn_theme_dir .. "titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = zenburn_theme_dir .. "titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = zenburn_theme_dir .. "titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = zenburn_theme_dir .. "titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = zenburn_theme_dir .. "titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = zenburn_theme_dir .. "titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = zenburn_theme_dir .. "titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = zenburn_theme_dir .. "titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = zenburn_theme_dir .. "titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = zenburn_theme_dir .. "titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

return theme
