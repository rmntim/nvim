return {
  {
    "metalelf0/jellybeans-nvim",
    dependencies = { "rktjmp/lush.nvim" },
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",

        "typescript-language-server",
        "biome",

        "pyright",
        "black",

        "gopls",
        "clangd",
        "zls",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "vimdoc",
        "lua",
        "luadoc",

        "html",
        "css",
        "javascript",
        "jsdoc",
        "typescript",
        "tsx",
        "json",
        "jsonc",

        "go",
        "sql",
        "yaml",
        "toml",
        "xml",

        "python",
        "java",

        "c",
        "cpp",
        "cmake",
        "zig",
      },
    },
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "BufEnter",
    opts = {},
  },

  {
    "kdheepak/lazygit.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      view = {
        side = "right",
      },
    },
  },
}
