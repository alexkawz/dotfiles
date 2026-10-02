-- Monitor wiki https://wiki.hypr.land/Configuring/Basics/Monitors/
-- Edit variables.lua for the monitor outputs instead of here directly

hl.monitor({
    output    = MONITOR1,
    mode      = "3440x1440@165",
    position  = "0x0",
    scale     = "1",
    bitdepth  = 10,
})

hl.monitor({
    output    = MONITOR2,
    mode      = "2560x1440@144",
    position  = "0x-1440",
    scale     = "1",
})

-- Anything else that gets plugged in
hl.monitor({
    output    = "",
    mode      = "preferred",
    position  = "auto",
    scale     = "auto",
})
