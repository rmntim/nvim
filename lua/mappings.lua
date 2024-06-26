require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<leader>lf", "<cmd> lua vim.diagnostic.open_float()<CR>", { desc = "Open floating diagnostics" })
