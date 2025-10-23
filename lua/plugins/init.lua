return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      {"nvim-lua/plenary.nvim", branch = "master"},
    },
    build = "make tiktoken",
    cmd = {"CopilotChat", "CopilotChatToggle", "CopilotChatModels"},
    config = function()
      require("CopilotChat").setup(require "configs.copilotchat")
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
