-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  lua_ls = {},
  tsserver = {},
  pyright = {},
  gopls = {},
  sourcekit = {},
  rust_analyzer = {},
  clangd = {
    cmd = {
      "clangd",
      "--clang-tidy",
    },
    filetypes = {
      "c",
      "cpp",
    },
  },
}

for lsp, opts in pairs(servers) do
  opts.on_attach = on_attach
  opts.capabilities = capabilities
  opts.on_init = on_init
  lspconfig[lsp].setup(opts)
end
