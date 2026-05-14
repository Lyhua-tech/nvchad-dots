return {
  {
    "nvim-flutter/flutter-tools.nvim",
    lazy = false, -- Important: load immediately to find the Flutter SDK
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- Optional: better UI for device selection
    },
    config = function()
      require("flutter-tools").setup {
        ui = {
          border = "rounded",
          notification_style = "plugin",
        },
        decorations = {
          statusline = {
            app_version = true,
            device = true,
          },
        },
        lsp = {
          -- 1. This plugin automatically finds the dart language server in your SDK
          -- 2. It sets up the 'lspconfig' for you
          color = {
            enabled = true,
          },
          settings = {
            showTodos = true,
            completeFunctionCalls = true,
            analysisExcludedFolders = {
              vim.fn.expand "$HOME/.pub-cache",
              vim.fn.expand "/opt/homebrew/",
              vim.fn.expand "$HOME/fvm/",
            },
          },
        },
      }
    end,
  },
}
