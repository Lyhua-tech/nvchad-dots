require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- CopilotChat keymaps
map("n", "<leader>cc", "<cmd>CopilotChat<CR>", { desc = "Copilot Chat Open" })
map("n", "<leader>cq", "<cmd>CopilotChatClose<CR>", { desc = "Copilot Chat Close" })
map("n", "<leader>cr", "<cmd>CopilotChatReset<CR>", { desc = "Copilot Chat Reset" })
map("n", "<leader>cm", "<cmd>CopilotChatModels<CR>", { desc = "Copilot Chat Switch Model" })

-- Ask about selected code (Visual mode)
map("v", "<leader>ce", "<cmd>CopilotChatExplain<CR>", { desc = "Copilot Explain Code" })
map("v", "<leader>cf", "<cmd>CopilotChatFix<CR>", { desc = "Copilot Fix Code" })
map("v", "<leader>ct", "<cmd>CopilotChatTests<CR>", { desc = "Copilot Generate Tests" })
map("v", "<leader>co", "<cmd>CopilotChatOptimize<CR>", { desc = "Copilot Optimize Code" })

-- Inline suggestion keymaps
map("i", "<C-j>", 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false, desc = "Copilot Accept" })
map("i", "<C-]>", "<Plug>(copilot-next)", { desc = "Copilot Next Suggestion" })
map("i", "<C-x>", "<Plug>(copilot-dismiss)", { desc = "Copilot Dismiss" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("v", "<leader>ca", function()
  -- Store marks before leaving visual mode
  vim.cmd "normal! \27"
  local input = vim.fn.input "Ask Copilot: "
  if input ~= "" then
    require("CopilotChat").ask(input, {
      -- Use marks '< and '> which persist after leaving visual mode
      selection = function(source)
        local buf = source.bufnr
        local start = vim.api.nvim_buf_get_mark(buf, "<")
        local finish = vim.api.nvim_buf_get_mark(buf, ">")
        local lines = vim.api.nvim_buf_get_lines(buf, start[1] - 1, finish[1], false)
        return {
          lines = table.concat(lines, "\n"),
          start_row = start[1],
          end_row = finish[1],
        }
      end,
    })
  end
end, { desc = "Copilot Ask with visual selection" }) -- Or open the full chat panel with selection preloaded

map("v", "<leader>cc", function()
  vim.cmd "normal! \27"
  require("CopilotChat").open {
    resources = { "selection" },
  }
end, { desc = "Copilot Chat with visual selection" })
