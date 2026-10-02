-- Look and feel configuration

hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 20,
        border_size = 2,
        extend_border_grab_area = 10,
        resize_on_border = false,
        col = {
            active_border = {
                colors = { EF_GREEN, EF_AQUA },
                angle = 45,
            },
            inactive_border = EF_BG4,
        },
    },
    group = {
        col = {
            border_active = EF_YELLOW,
            border_inactive = EF_BG4,
            border_locked_active = EF_RED,
            border_locked_inactive = EF_BG4,
        },
        groupbar = {
            col = {
                active = EF_GREEN,
                inactive = EF_BG4,
                locked_active = EF_RED,
                locked_inactive = EF_BG4,
            },
        },
    },
    decoration = {
        dim_special = 0.3,
        rounding = 10,
        active_opacity = 1.0,
        inactive_opacity = 1.0,
        fullscreen_opacity = 1,
        blur = {
            size = 3,
            passes = 1,
            special = true,
        },
    },
})
