return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    init = function()
      vim.g.lspconfig_silent_deprecation = true
    end,
    config = function()
      require "configs.lspconfig"
    end,
  },
  -- 1. Copilot inline suggestions
  {
    "github/copilot.vim",
    lazy = false,
    config = function()
      -- Disable default Tab mapping (conflicts with NvChad)
      vim.g.copilot_no_tab_map = true
    end,
  },
  {
    "roobert/tailwindcss-colorizer-cmp.nvim",
    config = function()
      require("tailwindcss-colorizer-cmp").setup {
        color_square_width = 2,
      }
    end,
  },
  {
    "NvChad/nvim-colorizer.lua",
    event = "BufReadPre",
    config = function()
      require("colorizer").setup {
        filetypes = { "*" },
        user_default_options = {
          RGB = true,
          RRGGBB = true,
          names = true,
          RRGGBBAA = false,
          AARRGGBB = false,
          rgb_fn = true,
          hsl_fn = true,
          css = false,
          css_fn = true,
          mode = "background",
          tailwind = false,
          sass = { enable = false },
          virtualtext = "■",
          always_update = false,
        },
      }
    end,
  },
}
