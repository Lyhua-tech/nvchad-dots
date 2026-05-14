local options = {
  formatters_by_ft = {
    -- 1. FIX: Use php_cs_fixer (which is in your Mason list), NOT intelephense
    php = { "php_cs_fixer" },

    -- C/C++
    c = { "clang-format" },
    cpp = { "clang-format" },

    -- 2. FIX: Add Vue support here!
    vue = { "prettierd" },

    -- Frontend (JS/TS/React/HTML/CSS)
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescriptreact = { "prettierd" },
    html = { "prettierd" },
    css = { "prettierd" },

    -- Optional: Add these for better config formatting
    json = { "prettierd" },
    yaml = { "prettierd" },

    -- Lua
    lua = { "stylua" },

    dart = { "dart_format" },
  },

  format_on_save = {
    timeout_ms = 1000,
    lsp_fallback = true,
  },
}

return options
