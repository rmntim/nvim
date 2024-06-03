local options = {
  formatters_by_ft = {
    lua = { "stylua" },

    html = { "biome" },
    css = { "biome" },
    javascript = { "biome" },
    typescript = { "biome" },
    json = { "biome" },

    python = { "black" },

    nim = { "nimpretty" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
