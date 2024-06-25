require("lint").linters_by_ft = {
  go = { "golangcilint" },

  javascript = { "biomejs" },
  typescript = { "biomejs" },
  typescriptreact = { "biomejs" },

  python = { "ruff" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
