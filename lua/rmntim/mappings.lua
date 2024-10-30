local which_key = require("which-key")

local non_lsp_mappings = {
    ["<leader>"] = {
        e = { vim.cmd.Ex, "Open file explorer" },
        p = { '"_dP', "Paste without overwrite" },
        ["/"] = { "<Plug>(comment_toggle_linewise_current)", "Toggle comment" },
        s = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "Search and replace word under cursor" },
    },
}

which_key.register(non_lsp_mappings)
