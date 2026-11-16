hl.monitor({
  output = "eDP-1",
  mode = "preferred",
  position = "-800x0",
  scale = "auto",
})

-- hl.monitor({ output = "DP-1", mirror = "DP-9" })
-- hl.monitor({ output = "DP-2", mirror = "DP-9" })
-- hl.monitor({ output = "DP-3", mirror = "DP-9" })
-- hl.monitor({ output = "DP-4", mirror = "DP-9" })
-- hl.monitor({ output = "DP-5", mirror = "DP-9" })
-- hl.monitor({ output = "DP-6", mirror = "DP-9" })
-- hl.monitor({ output = "DP-7", mirror = "DP-9" })
-- hl.monitor({ output = "DP-8", mirror = "DP-9" })

hl.monitor({
  output = "DP-9",
  mode = "preferred",
  -- position = "-5120x-800",
  position = "-2560x-1440",
  scale = "auto",
})
--
-- hl.monitor({
--   output = "DP-7",
--   mode = "preferred",
--   position = "-2560x-800",
--   scale = "auto",
--   disabled = false,
--   -- sdrbrightness = 0.2
--   -- sdrsaturation = 0.2
--   -- cm = hdr
-- })

hl.monitor({
  output = "DP-5",
  mode = "preferred",
  position = "0x-1440",
  -- position = "auto",
  scale = 2,
})

hl.workspace_rule({
  workspace = "1",
  monitor = "DP-9",
})

hl.workspace_rule({
  workspace = "2",
  monitor = "DP-9",
})

hl.workspace_rule({
  workspace = "3",
  monitor = "DP-9",
})

hl.workspace_rule({
  workspace = "4",
  monitor = "DP-9",
})

hl.workspace_rule({
  workspace = "5",
  monitor = "eDP-1",
})

hl.workspace_rule({
  workspace = "6",
  monitor = "eDP-1",
})

hl.workspace_rule({
  workspace = "7",
  monitor = "DP-5",
})

hl.workspace_rule({
  workspace = "8",
  monitor = "DP-5",
  -- monitor = "DP-8",
})

hl.workspace_rule({
  workspace = "9",
  monitor = "DP-5",
  -- monitor = "DP-8",
})

hl.workspace_rule({
  workspace = "10",
  monitor = "DP-5",
  -- monitor = "DP-8",
})
