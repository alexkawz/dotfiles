local mainMod = "ALT"
local noctCall = "noctalia msg "
local launchPrefix = "uwsm app -- " -- if you are not using UWSM, make this empty (e.g. "")

---------------------------------------------
---- CORE BINDS (carried over from Arch) ----
---------------------------------------------

-- Launchers
hl.bind(mainMod .. " + T",     hl.dsp.exec_cmd(launchPrefix .. TERMINAL))
hl.bind(mainMod .. " + F",     hl.dsp.exec_cmd(launchPrefix .. BROWSER))
hl.bind(mainMod .. " + E",     hl.dsp.exec_cmd(launchPrefix .. FILE_MANAGER))
hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd(noctCall .. "panel-toggle launcher")) -- was wofi
hl.bind(mainMod .. " + C",     hl.dsp.exec_cmd(noctCall .. "screenshot-region"))     -- was hyprshot
hl.bind("SUPER + L",           hl.dsp.exec_cmd(noctCall .. "session lock"))          -- was hyprlock
hl.bind(mainMod .. " + SHIFT + V", hl.dsp.exec_cmd(noctCall .. "panel-toggle clipboard"))

-- Window manipulation
hl.bind(mainMod .. " + O", hl.dsp.window.close())
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + B", hl.dsp.layout("togglesplit"))
hl.bind("SUPER + F",       hl.dsp.window.fullscreen())
hl.bind("SUPER + M",       hl.dsp.exec_cmd("uwsm check is-active && uwsm stop || hyprctl dispatch 'hl.dsp.exit()'"))

-- Change focus
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9], move the active window with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,         hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Special workspace (scratchpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move & resize with mouse
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

---------------------------
---- HARDWARE CONTROLS ----
---------------------------
-- Same keys as before, routed through Noctalia so the OSD shows up

-- Audio
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(noctCall .. "volume-up"),   { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(noctCall .. "volume-down"), { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd(noctCall .. "volume-mute"), { locked = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd(noctCall .. "mic-mute"),    { locked = true })

-- Media
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd(noctCall .. "media toggle"),   { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd(noctCall .. "media toggle"),   { locked = true })
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd(noctCall .. "media next"),     { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd(noctCall .. "media previous"), { locked = true })

-- Brightness
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd(noctCall .. "brightness-up"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(noctCall .. "brightness-down"), { locked = true, repeating = true })

---------------------------------------------------
---- CACHYOS EXTRAS (not in the old Arch config) ---
---------------------------------------------------
-- These are the CachyOS defaults that had no equivalent before. They are kept
-- on SUPER, where they do not collide with anything above. Uncomment to enable.

-- Noctalia panels
-- hl.bind("SUPER + X",         hl.dsp.exec_cmd(noctCall .. "panel-toggle control-center"))
-- hl.bind("SUPER + A",         hl.dsp.exec_cmd(noctCall .. "panel-toggle control-center notifications"))
-- hl.bind("SUPER + Z",         hl.dsp.exec_cmd(noctCall .. "settings-toggle"))
-- hl.bind("SUPER + period",    hl.dsp.exec_cmd(noctCall .. "panel-toggle launcher /emo"))
-- hl.bind("SUPER + ALT + C",   hl.dsp.exec_cmd(noctCall .. "panel-toggle session"))
-- hl.bind("SUPER + SHIFT + W", hl.dsp.exec_cmd(noctCall .. "panel-toggle wallpaper"))
-- hl.bind("SUPER + Tab",       hl.dsp.exec_cmd(noctCall .. "window-switcher"))

-- Utilities
-- hl.bind("Print",                    hl.dsp.exec_cmd(noctCall .. "screenshot-region"))
-- hl.bind("SUPER + Print",            hl.dsp.exec_cmd(noctCall .. "screenshot-fullscreen"))
-- hl.bind("SUPER + P",                hl.dsp.exec_cmd("hyprpicker -a -n"))
-- hl.bind("CONTROL + SHIFT + Escape", hl.dsp.exec_cmd(launchPrefix .. TERMINAL .. " -e btop"))
-- hl.bind("SUPER + C",                hl.dsp.exec_cmd(launchPrefix .. CALCULATOR))
-- hl.bind("XF86Calculator",           hl.dsp.exec_cmd(launchPrefix .. CALCULATOR))
-- hl.bind("SUPER + T",                hl.dsp.exec_cmd(launchPrefix .. EDITOR))

-- Windows
-- hl.bind("SUPER + Escape", hl.dsp.exec_cmd("hyprctl kill")) -- click a window to force-kill it
-- hl.bind("SUPER + D",      hl.dsp.window.fullscreen({ mode = 1 })) -- maximize, keeps bar and gaps
-- hl.bind("ALT + Tab",      hl.dsp.window.cycle_next())
-- hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "l" }))
-- hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "r" }))
-- hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "u" }))
-- hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "d" }))

-- Monitors & workspaces
-- hl.bind("SUPER + 1",                hl.dsp.focus({ monitor = MONITOR1 }))
-- hl.bind("SUPER + 2",                hl.dsp.focus({ monitor = MONITOR2 }))
-- hl.bind("SUPER + SHIFT + 1",        hl.dsp.window.move({ monitor = MONITOR1 }))
-- hl.bind("SUPER + SHIFT + 2",        hl.dsp.window.move({ monitor = MONITOR2 }))
-- hl.bind("SUPER + CONTROL + Right",  hl.dsp.focus({ workspace = "m+1" }))
-- hl.bind("SUPER + CONTROL + Left",   hl.dsp.focus({ workspace = "m-1" }))
-- hl.bind("SUPER + CONTROL + Down",   hl.dsp.focus({ workspace = "emptym" })) -- next empty workspace
-- hl.bind("SUPER + CONTROL + SHIFT + Right", hl.dsp.window.move({ workspace = "m+1" }))
-- hl.bind("SUPER + CONTROL + SHIFT + Left",  hl.dsp.window.move({ workspace = "m-1" }))

-- Zoom (SUPER + Plus / Minus)
-- local function zoomfunction(value)
--     local zoomvalue = hl.get_config("cursor:zoom_factor")
--     hl.config({ cursor = { zoom_factor = math.max(1.0, math.min(3.0, zoomvalue + value)) } })
-- end
-- hl.bind("SUPER + Minus", function() zoomfunction(-0.3) end, { repeating = true })
-- hl.bind("SUPER + Plus",  function() zoomfunction(0.3) end,  { repeating = true })
