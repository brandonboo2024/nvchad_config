require "nvchad.options"

-- add yours here!

vim.opt.wrap = false

vim.diagnostic.config({
  virtual_lines=true
})

-- keep inline copilot disabled by default
vim.g.copilot_enabled = 0

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
