local options = {
  formatters_by_ft = {
    lua = { "stylua" },

    html = { "biome" },
    css = { "biome" },
    javascript = { "biome" },
    typescript = { "biome" },
    json = { "biome" },

    go = { "gofmt", "goimports" },

    python = { "ruff_format", "ruff_organize_imports" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
