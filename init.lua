vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme (NvChad themes apply here)
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

-- APPLY TRANSPARENCY AFTER THEME LOADS
local transparent_hls = {
  "Normal",
  "NormalNC",
  "SignColumn",
  "NvimTreeNormal",
  "NvimTreeNormalNC",
  "NvimTreeBg",
  "NvimTreeWinSeparator",
  "NvimTreeEndOfBuffer",
}

for _, hl in ipairs(transparent_hls) do
  vim.api.nvim_set_hl(0, hl, { bg = "none" })
end

require "options"
require "autocmds"

vim.schedule(function()
  require "mappings"
end)
