local builtin = require("telescope.builtin")
local which_key = require("which-key")

local non_lsp_mappings = {
    { "<leader>ff", builtin.find_files, desc = "Telescope find files" },
    { "<leader>fg", builtin.live_grep, desc = "Telescope live grep" },
    { "<leader>e", vim.cmd.Ex, desc = "Open file explorer" },
    { "<leader>p", '"_dP', desc = "Paste without overwrite" },
    { "<leader>/", "<Plug>(comment_toggle_linewise_current)", desc = "Toggle comment" },
    {
        "<leader>s",
        [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
        desc = "Search and replace word under cursor",
    },
}

which_key.add(non_lsp_mappings)
