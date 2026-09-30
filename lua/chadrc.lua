-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "wombat", -- Replace with your preferred theme if needed
  hl_override = {
    -- Remove background from NvimTree and floating windows
    NvimTreeNormal = { bg = "none" },
    NvimTreeNormalNC = { bg = "none" },
    NvimTreeBg = { bg = "none" },
    NvimTreeWinSeparator = { bg = "none", fg = "line" },
    NvimTreeEndOfBuffer = { bg = "none" },

    -- Additional base panel backgrounds
    Normal = { bg = "none" },
    NormalNC = { bg = "none" },
    SignColumn = { bg = "none" },
  },
}

M.ui = {
  transparency = true, -- Enables background transparency for Kitty
}

M.plugins = {
  "configs.plugins",
  "plugins.flutter-tools",
}

-- M.nvdash = { load_on_startup = true }

return M
