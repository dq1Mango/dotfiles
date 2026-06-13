----######################
----## HYPRLAND CONFIG ###
----######################

-- Please note not all available settings / options are set here.
-- For a full list, see the wiki

-- You can split this configuration into multiple files
-- Create your files separately and then link them to this file like this:
-- source = ~/.config/hypr/myColors.conf

--###############
--## MONITORS ###
--###############

-- See https://wiki.hyprland.org/Configuring/Monitors/
--monitor=,2560x1440@144,auto,auto
hl.monitor( {
  output = "",
  mode = "preferred",
  position = "auto",
  scale = "auto"
})

hl.monitor( {
  output = "DP-7",
  mode = "preferred",
  position = "-2560x-800",
  scale = "auto",
  -- disabled = false,
-- sdrbrightness = 0.2
-- sdrsaturation = 0.2
-- cm = hdr
})
-- monitorv2 {
--   output = DP-8
--   mode = preferred
--   position = -2560x-800
--   scale = auto
-- } 
hl.monitor ({
  output = "DP-9",
  mode = "preferred",
  position = "-2560x-800",
  scale = "auto",
})


--##################
--## MY PROGRAMS ###
--##################

-- See https://wiki.hyprland.org/Configuring/Keywords/

-- Set programs that you use
-- $terminal = kitty
local terminal = "ghostty"
local fileManager = "dolphin"
local menu = "wofi --show drun "

--############################
--## ENVIRONMENT VARIABLES ###
--############################

-- See https://wiki.hyprland.org/Configuring/Environment-variables/

-- Set cursor size
hl.env("HYPRCURSOR_SIZE","20")
-- env = HYPRCURSOR_THEME,/home/mqngo/.local/share/icons/cursor-theme
hl.env("HYPRCURSOR_THEME","/run/current-system/sw/share/icons/catppuccin-mocha-lavender-cursors")

-- Set hyprshot save directory
hl.env( "HYPRSHOT_DIR","/home/mqngo/Pictures/screenshots")

-- env = AQ_DRM_DEVICES, /dev/dri/card1:/dev/dri/card0
-- env = AQ_DRM_DEVICES, /dev/dri/card1


--##################
--## PERMISSIONS ###
--##################
-- See https://wiki.hyprland.org/Configuring/Permissions/
-- Please note permission changes here require a Hyprland restart and are not applied on-the-fly
-- for security reasons

-- ecosystem {
--   enforce_permissions = 1
-- }

-- permission = /usr/(bin|local/bin)/grim, screencopy, allow
-- permission = /usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland, screencopy, allow
-- permission = /usr/(bin|local/bin)/hyprpm, plugin, allow


--####################
--## LOOK AND FEEL ###
--####################

-- Refer to https://wiki.hyprland.org/Configuring/Variables/

-- https://wiki.hyprland.org/Configuring/Variables/#general

-- Load the color theme
-- source = ~/.config/hypr/themes/catppuccin/mocha.conf

require("themes/catppuccin/mocha.conf")


-- general {
--   --col.active_border = rgba(89b4faee) rgba(b4befeee) 45deg
--
-- }
-- the prior works super well btw dont even worry abt it
--
--

hl.config({
  general =  {


    col = {
    active_border = lavender,
    inactive_border = surface1 ,},

    gaps_in = 0,
    gaps_out = 0,
    --gaps_out = 20, 20, 10, 20

    border_size = 4,

    -- https://wiki.hyprland.org/Configuring/Variables/#variable-types for info about colors
    --col.active_border = rgba(33ccffee) rgba(00ff99ee) 45deg
    --col.inactive_border = rgba(595959aa)

    -- Set to true enable resizing windows by clicking and dragging on borders and gaps
    resize_on_border = false,

    -- Please see https://wiki.hyprland.org/Configuring/Tearing/ before you turn this on
    allow_tearing = false,

    layout = "dwindle",

    snap = {
    enabled = true,
    --border_overlap = true
    },
},


-- https://wiki.hyprland.org/Configuring/Variables/#decoration
decoration = {
    rounding = 0,
    rounding_power = 2,

    -- Change transparency of focused and unfocused windows
    --active_opacity = 1.0
    --inactive_opacity = 1.0

    --dim_inactive = false
    --dim_strength = 0.25

border_part_of_window = false,

    shadow  = {
        enabled = false,
        range =   4,
        render_power = 3,
        color = "rgba(1a1a1aee)",
    },

    -- https://wiki.hyprland.org/Configuring/Variables/#blur
    blur =  {
        enabled = true,
        size = 3,
        passes = 1,
        vibrancy = 0.1696,
    }
},

-- https://wiki.hyprland.org/Configuring/Variables/#animations
animations =  {
    -- enabled = yes, please :)
    enabled = true,

    -- Default animations, see https://wiki.hyprland.org/Configuring/Animations/ for more

    -- bezier = easeOutQuint,0.23,1,0.32,1
    -- bezier = easeInOutCubic,0.65,0.05,0.36,1
    -- bezier = linear,0,0,1,1
    -- bezier = almostLinear,0.5,0.5,0.75,1.0
    -- bezier = quick,0.15,0,0.1,1
    --
    -- animation = global, 1, 10, default
    -- animation = border, 1, 5.39, quick
    -- --animation = windows, 1, 4.79, easeOutQuint
    -- animation = windows, 1, 4.1, easeInOutCubic, gnomed --0%
    -- --animation = windowsOut, 1, 10.49, linear, gnomed
    -- animation = fadeIn, 1, 1.73, almostLinear
    -- animation = fadeOut, 1, 1.46, almostLinear
    -- animation = fade, 1, 3.03, quick
    -- animation = layers, 1, 3.81, easeOutQuint
    -- animation = layersIn, 1, 4, easeOutQuint, fade
    -- animation = layersOut, 1, 1.5, linear, fade
    -- animation = fadeLayersIn, 1, 1.79, almostLinear
    -- animation = fadeLayersOut, 1, 1.39, almostLinear
    -- animation = workspaces, 1, 2.71, almostLinear, fade
    -- animation = workspacesIn, 1, 1.94, almostLinear, fade
    --animation = workspacesOut, 1, 1.94, almostLinear, fade
},
-- See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
dwindle =  {
    -- pseudotile = true # Master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
    preserve_split = true -- You probably want this
},

-- See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
master  = {
    new_status = master,
},

-- https://wiki.hyprland.org/Configuring/Variables/#misc
misc  = {
    force_default_wallpaper = -1, -- Set to 0 or 1 to disable the anime mascot wallpapers
    disable_hyprland_logo = false, -- If true disables the random hyprland logo / anime girl background. :(
},

--############
--## INPUT ###
--############

-- https://wiki.hyprland.org/Configuring/Variables/#input
input =  {
    kb_layout = "us",
    kb_variant = "",
    kb_model = "",
    kb_options = "",
    kb_rules = "",

    follow_mouse = 1,

    sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

    touchpad  = {
        natural_scroll = false,
        scroll_factor = 0.3,
    },
},

-- Example per-device config
-- See https://wiki.hyprland.org/Configuring/Keywords/#per-device-input-configs for more
device =  {
    name = "epic-mouse-v1",
    sensitivity = -0.5,
},

gestures  = {
  workspace_swipe_distance = 1000
}
--
-- gesture = 3, horizontal, workspace
})

-- Default curves and animations, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1}    } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })

-- Default springs
hl.curve("easy",           { type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })

hl.animation({ leaf = "global",        enabled = true,  speed = 10,   bezier = "default" })
hl.animation({ leaf = "border",        enabled = true,  speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows",       enabled = true,  speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 4.1,  spring = "easy",         style = "popin 87%" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 1.49, bezier = "linear",       style = "popin 87%" })
hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers",        enabled = true,  speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 4,    bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 1.5,  bezier = "linear",       style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 1.21, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 7,    bezier = "quick" })
-- Ref https://wiki.hyprland.org/Configuring/Workspace-Rules/
-- "Smart gaps" / "No gaps when only"







--##################
--## KEYBINDINGS ###
--##################

-- See https://wiki.hyprland.org/Configuring/Keywords/
local mainMod = "ALT" -- Sets ALT key as main modifier

-- Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
hl.bind(mainMod.. "RETURN", hl.dsp.exec_cmd( terminal)) ----hold fastfetch
hl.bind(mainMod.. "W", hl.dsp.exec_cmd( "librewolf"))
hl.bind( mainMod.. "Q", hl.dsp.window.close())
hl.bind( mainMod.."Shift" .. "M", hl.dsp.exit())
hl.bind( mainMod.."Shift" .. "L" , hl.dsp.exec_cmd("hyprlock"))
hl.bind( mainMod.. "E", hl.dsp.exec_cmd(fileManager))
hl.bind( mainMod.. "V", hl.dsp.window.float({ action = "toggle" }))
hl.bind( mainMod.. "R", hl.dsp.exec_cmd(menu))
--bind = $mainMod, P, pseudo, # dwindle
-- bind = $mainMod, P, layoutmsg, togglesplit, # dwindle
-- idk why the above bind doesn't work but below is a hack of sorts that does
hl.bind( mainMod.. "P", hl.dsp.exec_cmd("hyprctl dispatch layoutmsg togglesplit")) -- dwindl
-- bind = $mainMod, P, exec, echo "hi" > "/home/mqngo/bruh" # dwindle
hl.bind( mainMod.. "BACKSPACE", hl.dsp.exec_cmd("fnottctl dismis"))
--bind = $mainMod, BACKSPACE, exec, dunstctl close 
hl.bind( mainMod.. "F", hl.dsp.window.fullscreen())

-- Hyprshot
hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -m region"))
--bind = Shift, PRINT, exec, hyprshot -m window
hl.bind("SHIFT".. "PRINT", hl.dsp.exec_cmd("hyprshot -m output"))

-- Cycle wallpaper
hl.bind( mainMod.. "B", hl.dsp.exec_cmd("lua ~/.config/hypr/otherCycle.lua"))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left", hl.dsp.focus({direction = "left"}))
hl.bind(mainMod .. " + h", hl.dsp.focus({direction = "left"}))
hl.bind(mainMod .. " + right", hl.dsp.focus({direction = "right"}))
hl.bind(mainMod .. " + l", hl.dsp.focus({direction = "right"}))
hl.bind(mainMod .. " + up", hl.dsp.focus({direction = "up"}))
hl.bind(mainMod .. " + k", hl.dsp.focus({direction = "up"}))
hl.bind(mainMod .. " + down", hl.dsp.focus({direction = "down"}))
hl.bind(mainMod .. " + j", hl.dsp.focus({direction = "down"}))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- -- Switch workspaces with mainMod + [0-9]
-- bind = $mainMod, 1, workspace, 1
-- bind = $mainMod, 2, workspace, 2
-- bind = $mainMod, 3, workspace, 3
-- bind = $mainMod, 4, workspace, 4
-- bind = $mainMod, 5, workspace, 5
-- bind = $mainMod, 6, workspace, 6
-- bind = $mainMod, 7, workspace, 7
-- bind = $mainMod, 8, workspace, 8
-- bind = $mainMod, 9, workspace, 9
-- bind = $mainMod, 0, workspace, 10

-- Tab over workspaces
-- bind = $mainMod, Tab, workspace, e+1
-- bind = $mainMod SHIFT, Tab, workspace, e-1

-- -- Move active window to a workspace with mainMod + SHIFT + [0-9]
-- bind = $mainMod SHIFT, 1, movetoworkspace, 1
-- bind = $mainMod SHIFT, 2, movetoworkspace, 2
-- bind = $mainMod SHIFT, 3, movetoworkspace, 3
-- bind = $mainMod SHIFT, 4, movetoworkspace, 4
-- bind = $mainMod SHIFT, 5, movetoworkspace, 5
-- bind = $mainMod SHIFT, 6, movetoworkspace, 6
-- bind = $mainMod SHIFT, 7, movetoworkspace, 7
-- bind = $mainMod SHIFT, 8, movetoworkspace, 8
-- bind = $mainMod SHIFT, 9, movetoworkspace, 9
-- bind = $mainMod SHIFT, 0, movetoworkspace, 10

-- Example special workspace (scratchpad)
-- bind = $mainMod, S, togglespecialworkspace, magic
-- bind = $mainMod SHIFT, S, movetoworkspace, special:magic

-- Scroll through existing workspaces with mainMod + scroll
-- bind = $mainMod, mouse_down, workspace, e+1
-- bind = $mainMod, mouse_up, workspace, e-1

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

local primary_player = "spotify"

-- Multimedia control with a 60% keyboard
bind = Control Shift, left, exec, playerctl --player $primary_player previous
bind = Control Shift, right, exec, playerctl --player $primary_player next
bind = Control Shift, down, exec, playerctl --player $primary_player play-pause

-- Multimedia control with a 60% keyboard
bind = $mainMod Control, left, exec, playerctl --player $primary_player previous
bind = $mainMod Control, right, exec, playerctl --player $primary_playe next
bind = $mainMod Control, down, exec, playerctl --player $primary_player play-pause

-- Requires playerctl
bindl = , XF86AudioNext, exec, playerctl --player $primary_player next
bindl = , XF86AudioPause, exec, playerctl --player $primary_player play-pause
bindl = , XF86AudioPlay, exec, playerctl --player $primary_player play-pause
bindl = , XF86AudioPrev, exec, playerctl --player $primary_player previous

-- toogle the gaming layout
bind = SUPER, t, exec, sudo /home/mqngo/.scripts/toggleLayout.pl

-- Laptop multimedia keys for volume and LCD brightness
bindel = ,XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+
bindel = ,XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
bindel = ,XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
bindel = ,XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle
bindel = ,XF86MonBrightnessUp, exec, brightnessctl -e2 -n4 set 5%+ --| /home/mqngo/.scripts/brightness.pl
bindel = ,XF86MonBrightnessDown, exec, brightnessctl -e2 -n4 set 5%- --| /home/mqngo/.scripts/brightness.pl

--#############################
--## WINDOWS AND WORKSPACES ###
--#############################

-- See https://wiki.hyprland.org/Configuring/Window-Rules/ for more
-- See https://wiki.hyprland.org/Configuring/Workspace-Rules/ for workspace rules

-- Example windowrule
-- windowrule = float,class:^(kitty)$,title:^(kitty)$
workspace = 1, monitor:eDP-1
workspace = 2, monitor:eDP-1
workspace = 3, monitor:eDP-1
workspace = 4, monitor:eDP-1
workspace = 5, monitor:eDP-1
workspace = 6, monitor:eDP-1
workspace = 7, monitor:eDP-1
workspace = 8, monitor:DP-7
workspace = 9, monitor:DP-7
-- workspace = 10, monitor:eDP-8
-- workspace = 10, monitor:DP-9
workspace = 10, monitor:DP-7
-- workspace = 10, monitor:DP-9

-- Ignore maximize requests from apps. You'll probably like this.
windowrule {
  name = "suppress maximize"
  match:class =  *
  suppress_event = true
  maximize = true
} 

-- Fix some dragging issues with XWayland
windowrule { 
  name = "XWayland dragging issues"
  match:class = "^$"
  match:title = "^$"

  no_focus = true
  -- xwayland = 1 
  float = on,
  fullscreen = 0,
  pin = true
}
--float pulseaudio client

windowrule {
  name = "float pulseaudio"
  match:class = org.pulseaudio.pavucontrol
  match:title = Volume Control
  float = true 
  size  = 960 480
}

windowrule {
  name = "float bluetuith"
  match:class = bluetuith
  -- idk why the title always fails to match
  -- match:title = bluetuith
  float = true 
  size  = 480 480
}

-- unscale XWayland
xwayland {
  force_zero_scaling = true
}

-- toolkit-specific scale
env = GDK_SCALE,2
env = XCURSOR_SIZE,20

-- windowrule {, class:org.pulseaudio.pavucontrol title:Volume Control }#float pulseaudio client

--windowrule = float, class:org.pulseaudio.pavucontrol title:Volume Control #float pulseaudio client

--################
--## AUTOSTART ###
--################

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:

--start polkit
-- exec-once = systemctl --user start hyprpolkitagent
exec-once = hypridle
exec-once = fnott
-- exec-once = waybar
exec-once = $terminal --command fish -C fastfetch
-- exec-once = waybar & hyprpaper & firefox

exec-once = wpaperd -d
-- exec-once = lua ~/.config/hypr/otherCycle.lua

-- Start Hyprlock on startup to act as a pseudo Display Manager that is much faster
exec-once = hyprlock

