-- Load NvChad defaults (on_attach, capabilities, etc.)
require("nvchad.configs.lspconfig").defaults()

-- Define Lua LSP config using Neovim's native API
vim.lsp.config('lua_ls', {
  -- use the system lua-language-server from pacman
  cmd = { 'lua-language-server' },

  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
})

-- All the servers you want enabled
local servers = {
  "html",
  "cssls",
  "clangd",
  "jdtls",
  "ty",
  "ts-ls",
  "lua_ls",   -- 🔥 add this
}

vim.lsp.enable(servers)
