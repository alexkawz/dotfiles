-- Workspace rules wiki https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
hl.workspace_rule({ workspace = "name:gaming", monitor = PRIMARY_MONITOR, default = true })

-- Pin workspaces to monitors: 1-6 on the ultrawide, 7-10 on the second panel.
hl.workspace_rule({ workspace = "1", monitor = MONITOR1, default = true })
for i = 2, 6 do
    hl.workspace_rule({ workspace = tostring(i), monitor = MONITOR1 })
end
hl.workspace_rule({ workspace = "7", monitor = MONITOR2, default = true })
for i = 8, 10 do
    hl.workspace_rule({ workspace = tostring(i), monitor = MONITOR2 })
end
