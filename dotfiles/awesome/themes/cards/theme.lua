---------------------------
-- cards awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local theme_dir = gfs.get_configuration_dir() .. 'themes/'
local themes_path = theme_dir
local theme = {}

theme.font          = "Roboto Bold 10"
theme.fg_normal                                 = "#FFFFFF"
theme.fg_focus                                  = "#FFFFFF"
theme.bg_focus                                  = "#404040"
theme.taglist_bg_focus                          = "#606060"
theme.bg_normal                                 = "#202020"
theme.fg_urgent                                 = "#CC9393"
theme.bg_urgent                                 = "#006B8E"

theme.bg_systray    = theme.bg_normal

theme.fg_minimize   = "#ffffff"
theme.bg_minimize   = "#444444"

theme.useless_gap   = dpi(2)
theme.border_width  = dpi(2)
theme.border_normal = "#000000"
theme.border_focus  = "#535d6c"
theme.border_marked = "#91231c"

-- There are other variable sets
-- overriding the cards one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path.."cards/submenu.png"
theme.menu_height = dpi(20)
theme.menu_width  = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = themes_path.."cards/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path.."cards/titlebar/close_focus.svg"

theme.titlebar_minimize_button_normal = themes_path.."cards/titlebar/minimize_normal.svg"
theme.titlebar_minimize_button_focus  = themes_path.."cards/titlebar/minimize_focus.svg"

theme.titlebar_ontop_button_normal_inactive = themes_path.."cards/titlebar/ontop_normal_inactive.svg"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."cards/titlebar/ontop_focus_inactive.svg"
theme.titlebar_ontop_button_normal_active = themes_path.."cards/titlebar/ontop_normal_active.svg"
theme.titlebar_ontop_button_focus_active  = themes_path.."cards/titlebar/ontop_focus_active.svg"

theme.titlebar_sticky_button_normal_inactive = themes_path.."cards/titlebar/sticky_normal_inactive.svg"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."cards/titlebar/sticky_focus_inactive.svg"
theme.titlebar_sticky_button_normal_active = themes_path.."cards/titlebar/sticky_normal_active.svg"
theme.titlebar_sticky_button_focus_active  = themes_path.."cards/titlebar/sticky_focus_active.svg"

theme.titlebar_floating_button_normal_inactive = themes_path.."cards/titlebar/floating_normal_inactive.svg"
theme.titlebar_floating_button_focus_inactive  = themes_path.."cards/titlebar/floating_focus_inactive.svg"
theme.titlebar_floating_button_normal_active = themes_path.."cards/titlebar/floating_normal_active.svg"
theme.titlebar_floating_button_focus_active  = themes_path.."cards/titlebar/floating_focus_active.svg"

theme.titlebar_maximized_button_normal_inactive = themes_path.."cards/titlebar/maximized_normal_inactive.svg"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."cards/titlebar/maximized_focus_inactive.svg"
theme.titlebar_maximized_button_normal_active = themes_path.."cards/titlebar/maximized_normal_active.svg"
theme.titlebar_maximized_button_focus_active  = themes_path.."cards/titlebar/maximized_focus_active.svg"

theme.wallpaper = themes_path.."cards/background.png"

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path.."cards/layouts/fairhw.png"
theme.layout_fairv = themes_path.."cards/layouts/fairvw.png"
theme.layout_floating  = themes_path.."cards/layouts/floatingw.png"
theme.layout_magnifier = themes_path.."cards/layouts/magnifierw.png"
theme.layout_max = themes_path.."cards/layouts/maxw.png"
theme.layout_fullscreen = themes_path.."cards/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path.."cards/layouts/tilebottomw.png"
theme.layout_tileleft   = themes_path.."cards/layouts/tileleftw.png"
theme.layout_tile = themes_path.."cards/layouts/tilew.png"
theme.layout_tiletop = themes_path.."cards/layouts/tiletopw.png"
theme.layout_spiral  = themes_path.."cards/layouts/spiralw.png"
theme.layout_dwindle = themes_path.."cards/layouts/dwindlew.png"
theme.layout_cornernw = themes_path.."cards/layouts/cornernww.png"
theme.layout_cornerne = themes_path.."cards/layouts/cornernew.png"
theme.layout_cornersw = themes_path.."cards/layouts/cornersww.png"
theme.layout_cornerse = themes_path.."cards/layouts/cornersew.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
