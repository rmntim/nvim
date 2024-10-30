return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        vim.filetype.add({
            extension = {
                c3 = "c3",
                c3i = "c3",
                c3t = "c3",
            },
        })

        local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
        parser_config.c3 = {
            install_info = {
                url = "https://github.com/c3lang/tree-sitter-c3",
                files = { "src/parser.c", "src/scanner.c" },
                branch = "main",
            },
        }

        configs.setup({
            ensure_installed = {
                "c",
                "c3",
                "cpp",
                "zig",
                "rust",

                "lua",
                "vim",
                "vimdoc",

                "html",
                "css",
                "javascript",
                "typescript",

                "python",
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
