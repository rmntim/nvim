require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<leader>fl", "<cmd> lua vim.diagnostic.open_float()<CR>", { desc = "Open floating diagnostics" })
