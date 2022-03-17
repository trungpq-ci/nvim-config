local nvim_notify = require("notify")

nvim_notify.setup({
  -- Animation style (see below for details)
  stages = "fade_in_slide_out",

  -- Default timeout for notifications
  timeout = 1500,

  -- For stages that change opacity this is treated as the highlight behind the window
  -- Set this to either a highlight group, an RGB hex value e.g. "#000000" or a function returning an RGB code for dynamic values
  --background_colour = "Normal",
  background_colour = "#2E3440",

  -- Minimum width for notification windows
  minimum_width = 50,
})


vim.notify = nvim_notify
