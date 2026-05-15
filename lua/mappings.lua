require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- GitHub Copilot (official plugin) keymaps
map("i", "<C-j>", 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false, desc = "Copilot Accept" })
map("i", "<C-]>", "<Plug>(copilot-next)", { desc = "Copilot Next Suggestion" })
map("i", "<C-x>", "<Plug>(copilot-dismiss)", { desc = "Copilot Dismiss" })
map("n", "<leader>cp", "<cmd>Copilot panel<CR>", { desc = "Copilot Panel" })
