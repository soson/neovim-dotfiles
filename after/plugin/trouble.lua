local icons = require("configs.icons")
-- require("trouble").setup {
--   modes = {
--     test = {
--       mode = "diagnostics",
--       preview = {
--         type = "split",
--         relative = "win",
--         position = "right",
--         size = 0.3,
--       },
--     },
--   },
-- }

require('trouble').setup {
  icons = {
    indent = {
      middle = " ",
      last = " ",
      top = " ",
      ws = "│  ",
    },
  },
  modes = {
    diagnostics = {
      groups = {
        { "filename", format = "{file_icon} {basename:Title} {count}" },
      },
    },
  },
}
--  modes = {
--    preview_float = {
--      mode = "diagnostics",
--      preview = {
--        type = "float",
--        relative = "editor",
--        border = "rounded",
--        title = "Preview",
--        title_pos = "center",
--        position = { 0, -2 },
--        size = { width = 0.3, height = 0.3 },
--        zindex = 200,
--      },
--    },
--  },
--}
