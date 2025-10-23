require "nvchad.mappings"


-- add yours here

local map = vim.keymap.set
-- mappings for copilot.vim plugin
map("n", "<leader>ce", "<cmd>Copilot enable<cr>",  { desc = "Copilot: enable" })
map("n", "<leader>cd", "<cmd>Copilot disable<cr>", { desc = "Copilot: disable" })
map("n", "<leader>cs", "<cmd>Copilot status<cr>", { desc = "Copilot: status" })
-- mapping for copilot chat plugin
map({"n", "v"}, "<leader>cc", "<cmd>CopilotChat<cr>", {desc = "Copilot Chat"})


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
